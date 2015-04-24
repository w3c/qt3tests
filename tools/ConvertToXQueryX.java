

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.Properties;

import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQConstants;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;
import javax.xml.xquery.XQExpression;
import javax.xml.xquery.XQItem;
import javax.xml.xquery.XQSequence;
import javax.xml.xquery.XQStaticContext;

import org.w3c.xqparser.ConversionController;
import org.w3c.xqparser.SimpleNode;
import org.w3c.xqparser.XParser;

/**
 * Converts XQuery tests to XQueryX
 * 
 * Use ./build.xml to invoke this. e.g.
 * 
 *   ant -Dxqj.class=org.example.MyDataSource -Dxqj.classpath=foo.jar:bat.jar
 *
 * NOTE: TODO 
 *
 *  In qtspecs/specifications/grammar-30 there are already facilities to 
 *  process the catalog and convert tests to XQueryX for testing.  We should
 *  investigate removing this and enabling that process to produce the xqueryx
 *  zip file(s).  Benefits:
 *    - Less maintenance
 *    - Don't need to keep XQueryXCovnerter.jar here (it will become stale)
 *    - Don't need an XQJ implementation (grammar-30 uses DOM to process the catalog)
 *
 * @author O'Neil Delpratt
 * @author Josh Spiegel
 */
public final class ConvertToXQueryX {

    /** Used to query the catalog and test set files */
    private final XQConnection con;
    
    /** XQueryX files are written to this directory */
    private final File outputDir;
    
    /** Conversion errors are written to this log */
    private final PrintWriter log;
    
    /** Counts the number of conversion failures not in EXPECTED_FAILURES  */
    private int unexpectedFailures; 

    /** xqx-conversion-failures.properties */
    private Properties expectedFailures;
    
    private ConvertToXQueryX(XQDataSource dataSource, File outputDir, File logFile) throws XQException, IOException {
        this.con = dataSource.getConnection();
        this.outputDir = outputDir;
        this.log = new PrintWriter(logFile);
        XQStaticContext ctx = con.getStaticContext();
        ctx.setBindingMode(XQConstants.BINDING_MODE_DEFERRED);
        ctx.declareNamespace("t", "http://www.w3.org/2010/09/qt-fots-catalog");
        con.setStaticContext(ctx);  

        FileInputStream fis = new FileInputStream("xqx-conversion-failures.properties");
        expectedFailures = new Properties();
        expectedFailures.load(fis);
        fis.close();
    }
    
    private void close() throws XQException {
        con.close();
        log.close();
    }
    
    private int convert(String catalogFile) throws XQException, IOException {
        unexpectedFailures = 0;
        XQItem catalog = item(catalogFile);
        XQExpression expr = con.createExpression();
        expr.bindItem(XQConstants.CONTEXT_ITEM, catalog);
        XQSequence testSets = expr.executeQuery("t:catalog/t:test-set");
        while (testSets.next()) {
            processTestSet(testSets.getItem());
        }
        testSets.close();
        expr.close();
        return unexpectedFailures;
    }

    private void processTestSet(XQItem testSet) throws XQException, IOException {
        String name = queryAsString("data(@name)", testSet);
        String file = queryAsString("data(@file)", testSet);
        log.println("Converting set " + name + " (" + file + ")");
        
        if (!isXQuery(testSet)) {
            log.println("!! Skipping testSet " + name + " because of spec depdnency. ");
            return;
        }
        
        // e.g. ../fn/contains.xml
        File testSetFile = new File("..", file);
        
        // e.g. ../fn/
        File baseDir = testSetFile.getParentFile();
        
        // e.g. fn
        String setDirName = baseDir.getName();
        
        // e.g. build/xqueryx/fn
        File setOutputDir = new File(outputDir, setDirName);
        
        // e.g. build/xqueryx/fn/fn-parse-json
        setOutputDir = new File(setOutputDir, name);
        setOutputDir.mkdirs();
        
        XQItem testSetDoc = item(testSetFile.toString());
        XQExpression expr = con.createExpression();
        expr.bindItem(XQConstants.CONTEXT_ITEM, testSetDoc);

        // Tests with syntax errors shouldn't be convertible
        XQSequence testCases = expr.executeQuery(
           "t:test-set/t:test-case[empty(t:result/t:error[@code eq 'XPST0003'])]"
        );
        while (testCases.next()) {
            processTestCase(testCases.getItem(), setOutputDir, baseDir);
        }
        testCases.close();
        expr.close();
    }
    
    private boolean isXQuery(XQItem testSet) throws XQException {
        // Don't include strictly XQuery 1.0 tests which include
        // tests for function names that have become reserved and
        // no longer translate to XQueryX (e.g. function-decl-reserved-function-names-031)
        String query = "let $dep := t:dependency[@type eq 'spec'] \n" +
                       "return empty($dep) or " +
                       "tokenize($dep/@value, ' ') = ('XQ10+', 'XQ30+', 'XQ30', 'XQ31', 'XQ31+')";
        XQExpression expr = con.createExpression();
        expr.bindItem(XQConstants.CONTEXT_ITEM, testSet);
        XQSequence seq = expr.executeQuery(query);
        seq.next();
        boolean res = seq.getBoolean();
        seq.close();
        expr.close();
        return res;
    }

    private void processTestCase(XQItem testCase, File setOutputDir, File baseDir) throws XQException, IOException {
        String name = queryAsString("data(@name)", testCase);
        String file = queryAsString("data(t:test/@file)", testCase);
        
        if (!isXQuery(testCase)) {
            log.println("!! Skipping test " + name + " because of spec depdnency. ");
            return;
        }
        
        XParser parser;
        Closeable source;
        if (file == null) {
            String query = queryAsString("data(t:test)", testCase);
            source = new StringReader(query);
            parser = new XParser((StringReader)source);
        } else {
            source = new FileInputStream(new File(baseDir, file));
            parser = new XParser((InputStream)source);
        }

        SimpleNode tree = null;
        try {
            tree = parser.START();
        } catch (Throwable e) {
            logFailure(name, e);
            return;
        } finally {
            source.close();
        }

        ConversionController controller = new ConversionController();
        FileOutputStream out = new FileOutputStream(new File(setOutputDir, name + ".xml"));
        PrintStream ps = new PrintStream(out);
        
        try {
            controller.transform(tree, ps);
        } catch (Throwable e) {
            logFailure(name, e);
        } finally {
            ps.close();
        }

        if (expectedFailures.containsKey(name)) {
	    log.println("WARNING: Conversion of test " + name + " is expected to fail but it passed.");
        }
    }

    private void logFailure(String name, Throwable e) {
        if (!expectedFailures.containsKey(name)) {
            log.println("** Unexpected error converting test " + name);
            e.printStackTrace(log);
            unexpectedFailures++;
        }
    }

    private XQItem item(String file) throws FileNotFoundException, XQException, IOException {
        FileInputStream in = new FileInputStream(file);
        XQItem item = con.createItemFromDocument(in, null, null);
        in.close();
        return item;
    }

    private String queryAsString(String query, XQItem context) throws XQException {
        XQExpression expr = con.createExpression();
        expr.bindItem(XQConstants.CONTEXT_ITEM, context);
        XQSequence seq = expr.executeQuery(query);
        if (!seq.next()) {
            seq.close();
            expr.close();
            return null;
        }
        String result = seq.getAtomicValue();
        if (seq.next()) {
            throw new IllegalStateException("Expected one item, got more");
        }
        expr.close();
        return result;
    }

    public static void main(String[] args) throws Exception {
        String dataSourceClass = System.getProperty("xqj.class");
        File outputDir = new File(System.getProperty("out.dir"));
        File logFile = new File(System.getProperty("out.log"));
        XQDataSource dataSource = (XQDataSource) Class.forName(dataSourceClass).newInstance();
        ConvertToXQueryX converter = new ConvertToXQueryX(dataSource, outputDir, logFile);
        int failures = converter.convert("../catalog.xml");
        converter.close();
        System.out.print(String.valueOf(failures));
        System.exit(failures > 0 ? 1 : 0);
    }
}
