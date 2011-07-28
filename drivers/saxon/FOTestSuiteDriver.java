package com.saxonica.testdriver;

import net.sf.saxon.Configuration;
import net.sf.saxon.Version;
import net.sf.saxon.event.Builder;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.expr.XPathContextMajor;
import net.sf.saxon.expr.sort.AtomicSortComparer;
import net.sf.saxon.expr.sort.CodepointCollator;
import net.sf.saxon.expr.sort.GenericAtomicComparer;
import net.sf.saxon.expr.sort.SimpleCollation;
import net.sf.saxon.lib.*;
import net.sf.saxon.om.Name11Checker;
import net.sf.saxon.om.NodeInfo;
import net.sf.saxon.om.SequenceIterator;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.*;
import net.sf.saxon.s9api.Serializer.Property;
import net.sf.saxon.trans.DecimalFormatManager;
import net.sf.saxon.trans.DecimalSymbols;
import net.sf.saxon.trans.NoDynamicContextException;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.tree.iter.EmptyIterator;
import net.sf.saxon.tree.iter.ListIterator;
import net.sf.saxon.tree.iter.SingleNodeIterator;
import net.sf.saxon.tree.util.FastStringBuffer;
import net.sf.saxon.tree.util.Orphan;
import net.sf.saxon.type.Type;
import net.sf.saxon.value.*;
import net.sf.saxon.value.SequenceType;
import net.sf.saxon.value.StringValue;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.Collator;
import java.util.*;
import java.util.regex.Pattern;

/**
 * Test Driver for the Functions and Operators test suite
 */
public class FOTestSuiteDriver {


    public static String RNS = "http://www.w3.org/2010/09/qt-fots-catalog";

    private Processor driverProc = new Processor(true);
    private Serializer driverSerializer = driverProc.newSerializer();
    private Map<String, Environment> globalEnvironments = new HashMap<String, Environment>();
    private Map<String, Environment> localEnvironments = new HashMap<String, Environment>();
    private Pattern testPattern = null;
    private String testFuncSet = null;
    private boolean debug = false;
    XMLStreamWriter results;
    private int successes = 0;
    private int failures = 0;
    private int wrongErrorResults = 0;


    public static void main(String[] args) throws Exception {
        if (args.length == 0 || args[0].equals("-?")) {
            System.err.println("FOTestSuiteDriver catalog [-s:testSetName] [-t:testNamePattern]");
        }

        System.err.println("Testing Saxon " + Version.getProductVersion());
        new FOTestSuiteDriver().go(args);
    }

    /**
     * An environment captures the content of an &lt;environment&gt; element in the catalog: a named set
     * of source documents, schemas, etc
     */

    private class Environment {
        public Processor processor;
        public Map<String, XdmNode> sourceDocs;
        public XPathCompiler xpathCompiler;
        public XQueryCompiler xqueryCompiler;
        public XdmNode contextNode;
        public HashMap<QName, XdmValue> params = new HashMap<QName, XdmValue>();
        public boolean xml11 = false;
        public boolean usable = true;
        public FastStringBuffer paramDeclarations = new FastStringBuffer(256);
    }

    /**
     * The outcome of a test is either an XDM value or an exception.
     */

    private class Outcome {
        private XdmValue value;
        private SaxonApiException exception;

        public Outcome(XdmValue value) {
            this.value = value;
        }

        public Outcome(SaxonApiException exception) {
            this.exception = exception;
        }

        public boolean isException() {
            return exception != null;
        }

        public SaxonApiException getException() {
            return exception;
        }

        public XdmValue getResult() {
            return value;
        }

        public String toString() {
            return (isException() ? "EXCEPTION " + exception.getMessage() : value.toString());
        }

        public String serialize(Processor p) {
            if (isException()) {
                return "EXCEPTION " + exception.getMessage();
            } else {
                StringWriter sw = new StringWriter();
                Serializer s = p.newSerializer(sw);
                s.setOutputProperty(Property.METHOD, "xml");
                s.setOutputProperty(Property.INDENT, "yes");
                s.setOutputProperty(Property.OMIT_XML_DECLARATION, "yes");
                try {
                    s.serializeXdmValue(value);
                } catch (SaxonApiException err) {
                    return ("SERIALIZATION FAILED: " + err.getMessage());
                }
                return sw.toString();
            }
        }
    }

    private void go(String[] args) throws SaxonApiException {
        String catalog = args[0];

        for (int i = 1; i < args.length; i++) {
            if (args[i].startsWith("-t:")) {
                testPattern = Pattern.compile(args[i].substring(3));
            }
            if (args[i].startsWith("-s:")) {
                testFuncSet = args[i].substring(3);
            }
            if (args[i].startsWith("-debug")) {
                debug = true;
            }
        }
        driverSerializer.setOutputStream(System.err);
        driverSerializer.setOutputProperty(Property.OMIT_XML_DECLARATION, "yes");
        processCatalog(new File(catalog));
        System.err.println(successes + " successes, " + failures + " failures, " + wrongErrorResults + " incorrect ErrorCode");
    }

    private void processCatalog(File catalogFile) throws SaxonApiException {
        DocumentBuilder catbuilder = driverProc.newDocumentBuilder();
        XdmNode catalog = catbuilder.build(catalogFile);
        XPathCompiler xpc = driverProc.newXPathCompiler();
        xpc.setLanguageVersion("3.0");
        xpc.setCaching(true);
        xpc.declareNamespace("", "http://www.w3.org/2010/09/qt-fots-catalog");
        for (XdmItem env : xpc.evaluate("//environment", catalog)) {
            processEnvironment(xpc, env, globalEnvironments);
        }
        String testName = null;
        try {
            writeResultFilePreamble(driverProc, catalog, DateTimeValue.getCurrentDateTime(null).getStringValue().substring(0, 10));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        if (testFuncSet != null) {
            try {
                XdmNode funcSetNode = (XdmNode) xpc.evaluateSingle("//test-set[@name='" + testFuncSet + "']", catalog);
                if (funcSetNode == null) {
                    throw new Exception("Test-set " + testFuncSet + " not found!");
                }
                processTestSet(catbuilder, xpc, funcSetNode);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        } else {
            for (XdmItem testSet : xpc.evaluate("//test-set", catalog)) {
                processTestSet(catbuilder, xpc, ((XdmNode) testSet));
            }
        }
        try {
            writeResultFilePostamble();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void processTestSet(DocumentBuilder catbuilder, XPathCompiler xpc, XdmNode funcSetNode) throws SaxonApiException {
        String testName;
        try {
            results.writeStartElement("test-set");
            results.writeAttribute("name", funcSetNode.getAttributeValue(new QName("name")));
        } catch (XMLStreamException e) {
        }
        File testSetFile = new File(funcSetNode.getAttributeValue(new QName("file")));
        XdmNode testSetDocNode = catbuilder.build(testSetFile);
        localEnvironments.clear();
        localEnvironments.put("default", createLocalEnvironment(testSetDocNode.getBaseURI()));
        boolean run = true;
        for (XdmItem dependency : xpc.evaluate("/test-set/dependency", testSetDocNode)) {
            if (!dependencyIsSatisfied((XdmNode) dependency, null)) {
                run = false;
            }
        }
        if (run) {
            for (XdmItem env : xpc.evaluate("//environment[@name]", testSetDocNode)) {
                processEnvironment(xpc, env, localEnvironments);
            }
            for (XdmItem testCase : xpc.evaluate("//test-case", testSetDocNode)) {
                testName = xpc.evaluateSingle("@name", testCase).getStringValue();
                if (testPattern != null && !testPattern.matcher(testName).matches()) {
                    continue;
                }
                runTestCase((XdmNode) testCase, xpc);
            }
        }
        try {
            results.writeEndElement();
        } catch (XMLStreamException e) {
        }
    }

    /**
     * Construct a local default environment for a test set
     */

    private Environment createLocalEnvironment(URI baseURI) {
        Environment environment = new Environment();
        environment.processor = new Processor(true);
        // TODO: switch bytecode compilation on!
        environment.processor.setConfigurationProperty(FeatureKeys.GENERATE_BYTE_CODE, "false");
        environment.xpathCompiler = environment.processor.newXPathCompiler();
        environment.xpathCompiler.setBaseURI(baseURI);
        environment.xqueryCompiler = environment.processor.newXQueryCompiler();
        environment.xqueryCompiler.setBaseURI(baseURI);
        return environment;
    }

    /**
     * Construct an Environment
     *
     * @param xpc          the XPathCompiler used to process the catalog file
     * @param env          the Environment element in the catalog file
     * @param environments the set of environments to which this one should be added (may be null)
     * @return the constructed Environment object
     * @throws SaxonApiException
     */

    private Environment processEnvironment(XPathCompiler xpc, XdmItem env, Map<String, Environment> environments) throws SaxonApiException {
        Environment environment = new Environment();
        String name = ((XdmNode) env).getAttributeValue(new QName("name"));
        environment.processor = new Processor(true);
        // TODO: switch bytecode compilation on!
        environment.processor.setConfigurationProperty(FeatureKeys.GENERATE_BYTE_CODE, "false");
        environment.xpathCompiler = environment.processor.newXPathCompiler();
        environment.xpathCompiler.setBaseURI(((XdmNode) env).getBaseURI());
        environment.xqueryCompiler = environment.processor.newXQueryCompiler();
        environment.xqueryCompiler.setBaseURI(((XdmNode) env).getBaseURI());
        DocumentBuilder builder = environment.processor.newDocumentBuilder();
        environment.sourceDocs = new HashMap<String, XdmNode>();
        if (environments != null && name != null) {
            environments.put(name, environment);
        }

        for (XdmItem dependency : xpc.evaluate("dependency", env)) {
            if (!dependencyIsSatisfied((XdmNode) dependency, environment)) {
                environment.usable = false;
            }
        }

        // set the base URI if specified
        for (XdmItem base : xpc.evaluate("static-base-uri", env)) {
            String uri = ((XdmNode) base).getAttributeValue(new QName("uri"));
            try {
                environment.xpathCompiler.setBaseURI(new URI(uri));
                environment.xqueryCompiler.setBaseURI(new URI(uri));
            } catch (URISyntaxException e) {
                System.err.println("**** invalid base URI " + uri);
            }
        }

        // set any requested collations
        for (XdmItem base : xpc.evaluate("collation", env)) {
            String uri = ((XdmNode) base).getAttributeValue(new QName("uri"));
            if (uri.equals("http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind")) {
                Configuration config = xpc.getProcessor().getUnderlyingConfiguration();
                StringCollator collator = config.getCollationURIResolver().resolve("http://saxon.sf.net/collation?ignore-case=yes", "", config);
                environment.xpathCompiler.declareCollation(uri, (Collator) ((SimpleCollation) collator).getCollation());
                environment.xqueryCompiler.declareCollation(uri, (Collator) ((SimpleCollation) collator).getCollation());
            }
            String defaultAtt = ((XdmNode) base).getAttributeValue(new QName("default"));
            if (defaultAtt != null && (defaultAtt.trim().equals("true") || defaultAtt.trim().equals("1"))) {
                environment.xpathCompiler.declareDefaultCollation(uri);
                environment.xqueryCompiler.declareDefaultCollation(uri);
            }
        }

        // declare the requested namespaces
        for (XdmItem nsElement : xpc.evaluate("namespace", env)) {
            String prefix = ((XdmNode) nsElement).getAttributeValue(new QName("prefix"));
            String uri = ((XdmNode) nsElement).getAttributeValue(new QName("uri"));
            environment.xpathCompiler.declareNamespace(prefix, uri);
            environment.xqueryCompiler.declareNamespace(prefix, uri);
        }

        // load the requested schema documents
        SchemaManager manager = environment.processor.getSchemaManager();
        for (XdmItem schema : xpc.evaluate("schema", env)) {
            String href = ((XdmNode) schema).getAttributeValue(new QName("file"));
            File file = new File((((XdmNode) env).getBaseURI().resolve(href)));
            manager.load(new StreamSource(file));
        }

        // load the requested source documents
        for (XdmItem source : xpc.evaluate("source", env)) {
            String href = ((XdmNode) source).getAttributeValue(new QName("file"));
            File file = new File((((XdmNode) env).getBaseURI().resolve(href)));
            String uri = ((XdmNode) source).getAttributeValue(new QName("uri"));
            String validation = ((XdmNode) source).getAttributeValue(new QName("", "validation"));
            if (validation == null || validation.equals("skip")) {
                builder.setSchemaValidator(null);
            } else {
                SchemaValidator validator = manager.newSchemaValidator();
                validator.setLax(validation.equals("lax"));
                builder.setSchemaValidator(validator);
            }
            try {
                XdmNode doc = builder.build(file);
                if (uri != null) {
                    environment.sourceDocs.put(uri, doc);
                }
                String role = ((XdmNode) source).getAttributeValue(new QName("role"));
                if (role != null) {
                    if (".".equals(role)) {
                        environment.contextNode = doc;
                    } else if (role.startsWith("$")) {
                        String varName = role.substring(1);
                        environment.params.put(new QName(varName), doc);
                        environment.xpathCompiler.declareVariable(new QName(varName));
                        environment.paramDeclarations.append("declare variable $" + varName + " external; ");
                    }
                }
            } catch (SaxonApiException e) {
                System.err.println("*** failed to build source document " + file);
            }
        }

        // create a collection URI resolved to handle the requested collections
        final HashMap<URI, List<AnyURIValue>> collections = new HashMap<URI, List<AnyURIValue>>();
        for (XdmItem coll : xpc.evaluate("collection", env)) {
            String collectionURI = ((XdmNode) coll).getAttributeValue(new QName("uri"));
            if (collectionURI == null) {
                collectionURI = "";
            }
            List<AnyURIValue> docs = new ArrayList<AnyURIValue>();
            for (XdmItem source : xpc.evaluate("source", coll)) {
                String href = ((XdmNode) source).getAttributeValue(new QName("file"));
                File file = new File((((XdmNode) env).getBaseURI().resolve(href)));
                String id = ((XdmNode) source).getAttributeValue(new QName(NamespaceConstant.XML, "id"));
                XdmNode doc = builder.build(file);
                environment.sourceDocs.put(id, doc);
                docs.add(new AnyURIValue(doc.getDocumentURI().toString()));
            }
            try {
                collections.put(new URI(collectionURI), docs);
            } catch (URISyntaxException e) {
                System.err.println("**** Invalid collection URI " + collectionURI);
            }

        }
        if (!collections.isEmpty()) {
            environment.processor.getUnderlyingConfiguration().setCollectionURIResolver(
                    new CollectionURIResolver() {
                        public SequenceIterator resolve(String href, String base, XPathContext context) throws XPathException {
                            try {
                                List<AnyURIValue> docs;
                                if (href == null) {
                                    docs = collections.get(new URI(""));
                                } else {
                                    URI abs = new URI(base).resolve(href);
                                    docs = collections.get(abs);
                                }
                                if (docs == null) {
                                    return EmptyIterator.getInstance();
                                } else {
                                    return new ListIterator(docs);
                                }
                            } catch (URISyntaxException e) {
                                System.err.println("** Invalid URI: " + e.getMessage());
                                return EmptyIterator.getInstance();
                            }
                        }
                    }
            );
        }

        // register any required extension functions
        for (XdmItem source : xpc.evaluate("function", env)) {
            String fname = ((XdmNode) source).getAttributeValue(new QName("name"));
            if (fname.equals("fots:copy")) {
                environment.processor.registerExtensionFunction(new FotsCopyFunction());
            } else {
                System.err.println("**** Unknown function in environment");
            }
        }

        // register any required decimal formats
        for (XdmItem decimalFormat : xpc.evaluate("decimal-format", env)) {
            DecimalFormatManager dfm = environment.xpathCompiler.getUnderlyingStaticContext().getDecimalFormatManager();
            DecimalSymbols symbols = new DecimalSymbols();
            XdmNode formatElement = (XdmNode) decimalFormat;
            String formatName = formatElement.getAttributeValue(new QName("name"));
            StructuredQName formatQName = null;
            if (formatName != null) {
                if (formatName.indexOf(':') < 0) {
                    formatQName = new StructuredQName("", "", formatName);
                } else {
                    try {
                        formatQName = StructuredQName.fromLexicalQName(formatName, false, Name11Checker.getInstance(),
                                environment.xpathCompiler.getUnderlyingStaticContext().getNamespaceResolver());
                    } catch (XPathException e) {
                        System.err.println("**** Invalid QName as decimal-format name");
                        formatQName = new StructuredQName("", "", "error-name");
                    }
                }
            }
            for (XdmItem decimalFormatAtt : xpc.evaluate("@* except @name", formatElement)) {
                XdmNode formatAttribute = (XdmNode) decimalFormatAtt;
                String property = formatAttribute.getNodeName().getLocalName();
                String value = formatAttribute.getStringValue();
                if (property.equals("decimal-separator")) {
                    symbols.decimalSeparator = toChar(value);
                } else if (property.equals("grouping-separator")) {
                    symbols.groupingSeparator = toChar(value);
                } else if (property.equals("infinity")) {
                    symbols.infinity = value;
                } else if (property.equals("NaN")) {
                    symbols.NaN = value;
                } else if (property.equals("minus-sign")) {
                    symbols.minusSign = toChar(value);
                } else if (property.equals("percent")) {
                    symbols.percent = toChar(value);
                } else if (property.equals("per-mille")) {
                    symbols.permill = toChar(value);
                } else if (property.equals("zero-digit")) {
                    symbols.zeroDigit = toChar(value);
                } else if (property.equals("digit")) {
                    symbols.digit = toChar(value);
                } else if (property.equals("pattern-separator")) {
                    symbols.patternSeparator = toChar(value);
                } else {
                    System.err.println("**** Unknown decimal format attribute " + property);
                }
            }
            try {
                symbols.checkDistinctRoles();
            } catch (XPathException err) {
                System.err.println("**** " + err.getMessage());
            }
            try {
                if (formatName == null) {
                    dfm.setDefaultDecimalFormat(symbols, 0);
                } else {
                    dfm.setNamedDecimalFormat(formatQName, symbols, 0);
                }
            } catch (XPathException err) {
                System.err.println("**** " + err.getMessage());
            }

        }

        // declare any variables
        for (XdmItem param : xpc.evaluate("param", env)) {
            String varName = ((XdmNode) param).getAttributeValue(new QName("name"));
            XdmValue value;
            String source =  ((XdmNode) param).getAttributeValue(new QName("source"));
            if (source != null) {
                XdmNode sourceDoc = environment.sourceDocs.get(source);
                if (sourceDoc == null) {
                    System.err.println("**** Unknown source document " + source);
                }
                value = sourceDoc;
            } else {
                String select = ((XdmNode) param).getAttributeValue(new QName("select"));
                value = xpc.evaluate(select, null);
            }
            environment.params.put(new QName(varName), value);
            environment.xpathCompiler.declareVariable(new QName(varName));
            String declared = ((XdmNode) param).getAttributeValue(new QName("declared"));
            if (declared != null && "true".equals(declared) || "1".equals(declared)) {
                // no action
            } else {
                environment.paramDeclarations.append("declare variable $" + varName + " external; ");
            }
         }

        return environment;
    }

    /**
     * Get the Unicode codepoint corresponding to a String, which must represent a single Unicode character
     *
     * @param s the input string, representing a single Unicode character, perhaps as a surrogate pair
     * @return
     * @throws net.sf.saxon.trans.XPathException
     *
     */
    private int toChar(String s) {
        int[] e = StringValue.expand(s);
        if (e.length != 1) {
            System.err.println("Attribute \"" + s + "\" should be a single character");
        }
        return e[0];
    }

    /**
     * Decide whether a dependency is satisfied
     *
     * @param dependency the dependency element in the catalog
     * @param env        an environment in the catalog, which can be modified to satisfy the dependency if necessary.
     *                   May be null.
     * @return true if the environment satisfies the dependency, else false
     */

    private boolean dependencyIsSatisfied(XdmNode dependency, Environment env) {
        String type = dependency.getAttributeValue(new QName("type"));
        String value = dependency.getAttributeValue(new QName("value"));
        boolean inverse = "false".equals(dependency.getAttributeValue(new QName("satisfied")));
        if ("xpath-1.0-compatibility".equals(type)) {
            if ("true".equals(value)) {
                if (env != null) {
                    env.xpathCompiler.setBackwardsCompatible(true);
                } else {
                    return false;
                }
            }
            return true;
        } else if ("xml-version".equals(type)) {
            if ("1.1".equals(value) && !inverse) {
                if (env != null) {
                    env.processor.setXmlVersion("1.1");
                } else {
                    return false;
                }
            }
            return true;
        } else if ("limits".equals(type)) {
            if ("year_lt_0".equals(value) && !inverse) {
                return true;
            } else {
                return false;
            }
        } else if ("spec".equals(type)) {
            return true;
        } else if ("collection-stability".equals(type)) {
            // SAXON has a problem here - we don't support stable collections
            return ("false".equals(value) != inverse);
        } else if ("default-language".equals(type)) {
            return ("en".equals(value) != inverse);
        } else if ("directory-as-collection-uri".equals(type)) {
            return ("true".equals(value) != inverse);
        } else if ("language".equals(type)) {
            return (("en".equals(value) || "de".equals(value) || "fr".equals(value))  != inverse);
        } else if ("calendar".equals(type)) {
            return (("AD".equals(value) || "ISO".equals(value))  != inverse);
        } else if ("format-integer-sequence".equals(type)) {
            return !inverse;
        } else if ("feature".equals(type)) {
            if ("namespace-axis".equals(value)) {
                return !inverse;
            } else if ("schemaImport".equals(value) || "schemaValidation".equals(value)) {
                // Need to reset these after use for this query??
                if (env != null) {
                    env.xpathCompiler.setSchemaAware(true);
                    env.xqueryCompiler.setSchemaAware(true);
                }
                return true;
            } else {
                System.err.println("**** feature = " + value + "  ????");
                return false;
            }
        } else {
            System.err.println("**** dependency not recognized: " + type);
            return false;
        }
    }

    /**
     * Run a test case
     *
     * @param testCase the test case element in the catalog
     * @param xpc      the XPath compiler to be used for compiling XPath expressions against the catalog
     * @throws SaxonApiException
     */

    private void runTestCase(XdmNode testCase, XPathCompiler xpc) throws SaxonApiException {
        String testCaseName = testCase.getAttributeValue(new QName("name"));
        System.err.println("Test case " + testCaseName);

        XdmNode environmentNode = (XdmNode) xpc.evaluateSingle("environment", testCase);
        Environment env;
        if (environmentNode == null) {
            env = localEnvironments.get("default");
        } else {
            String envName = environmentNode.getAttributeValue(new QName("ref"));
            if (envName == null) {
                env = processEnvironment(xpc, environmentNode, null);
            } else {
                env = localEnvironments.get(envName);
                if (env == null) {
                    env = globalEnvironments.get(envName);
                }
                if (env == null) {
                    System.err.println("*** Unknown environment " + envName);
                    writeTestcaseElement(testCaseName, "fail", "Environment " + envName + " not found");
                    failures++;
                    return;
                }
            }
        }
        env.xpathCompiler.setBackwardsCompatible(false);
        env.processor.setXmlVersion("1.0");

        boolean run = true;
        String hostLang = "XP";
        String langVersion = "2.0";
        for (XdmItem dependency : xpc.evaluate("/*/dependency, ./dependency", testCase)) {
            String type = ((XdmNode) dependency).getAttributeValue(new QName("type"));
            if (type == null) {
                throw new IllegalStateException("dependency/@type is missing");
            }
            String value = ((XdmNode) dependency).getAttributeValue(new QName("value"));
            if (value == null) {
                throw new IllegalStateException("dependency/@value is missing");
            }
            if (type.equals("spec")) {
                if (value.contains("XP")) {
                    hostLang = "XP";
                    langVersion = (value.equals("XP20") ? "2.0" : "3.0");
                } else {
                    hostLang = "XQ";
                    langVersion = (value.contains("XQ10+") || value.contains("XQ30") ? "3.0" : "1.0");
                }
            }

            if (!dependencyIsSatisfied((XdmNode) dependency, env)) {
                System.err.println("*** Dependency not satisfied: " + ((XdmNode) dependency).getAttributeValue(new QName("type")));
                writeTestcaseElement(testCaseName, "notRun", "Dependency not satisfied");
                run = false;
            }
        }
        if (run) {

            Outcome outcome = null;
            String exp = null;
            try {
                exp = xpc.evaluate("if (test/@file) then unparsed-text(resolve-uri(test/@file, base-uri(.))) else string(test)", testCase).toString();
            } catch (SaxonApiException err) {
                System.err.println("*** Failed to read query: " + err.getMessage());
                outcome = new Outcome(err);
            }

            if (outcome == null) {
                if (hostLang.equals(("XP"))) {
                    XPathCompiler testXpc = env.xpathCompiler;
                    testXpc.setLanguageVersion(langVersion);
                    testXpc.declareNamespace("fn", NamespaceConstant.FN);
                    testXpc.declareNamespace("xs", NamespaceConstant.SCHEMA);
                    testXpc.declareNamespace("math", NamespaceConstant.MATH);
                    testXpc.declareNamespace("map", NamespaceConstant.MAP_FUNCTIONS);

                    try {
                        XPathSelector selector = testXpc.compile(exp).load();
                        for (QName varName : env.params.keySet()) {
                            selector.setVariable(varName, env.params.get(varName));
                        }
                        if (env.contextNode != null) {
                            selector.setContextItem(env.contextNode);
                        }
                        selector.setURIResolver(new TestURIResolver(env));
                        XdmValue result = selector.evaluate();
                        outcome = new Outcome(result);
                    } catch (SaxonApiException err) {
                        System.err.println(err.getMessage());
                        outcome = new Outcome(err);
                    }
                } else {
                    XQueryCompiler testXqc = env.xqueryCompiler;
                    testXqc.setLanguageVersion(langVersion);
                    testXqc.declareNamespace("fn", NamespaceConstant.FN);
                    testXqc.declareNamespace("xs", NamespaceConstant.SCHEMA);
                    testXqc.declareNamespace("math", NamespaceConstant.MATH);
                    testXqc.declareNamespace("map", NamespaceConstant.MAP_FUNCTIONS);
                    String vars = env.paramDeclarations.toString();
                    if (!vars.isEmpty()) {
                        int x = (exp.indexOf("(:%VARDECL%:)"));
                        if (x < 0) {
                            exp = vars + exp;
                        } else {
                            exp = exp.substring(0, x) + vars + exp.substring(x+13);
                        }
                    }
                    ModuleResolver mr = new ModuleResolver(xpc);
                    mr.setTestCase(testCase);
                    testXqc.setModuleURIResolver(mr);

                    try {
                        XQueryEvaluator selector = testXqc.compile(exp).load();
                        for (QName varName : env.params.keySet()) {
                            selector.setExternalVariable(varName, env.params.get(varName));
                        }
                        if (env.contextNode != null) {
                            selector.setContextItem(env.contextNode);
                        }
                        selector.setURIResolver(new TestURIResolver(env));
                        XdmValue result = selector.evaluate();
                        outcome = new Outcome(result);
                    } catch (SaxonApiException err) {
                        System.err.println(err.getMessage());
                        outcome = new Outcome(err);
                    }
                }
            }
            XdmNode assertion = (XdmNode) xpc.evaluateSingle("result/*[1]", testCase);
            if (assertion == null) {
                System.err.println("*** No assertions found for test case " + testCaseName);
                writeTestcaseElement(testCaseName, "fail", "No assertions in test case");
                failures++;
                return;
            }
            XPathCompiler assertXpc = env.processor.newXPathCompiler();
            assertXpc.setLanguageVersion("3.0");
            assertXpc.declareNamespace("fn", NamespaceConstant.FN);
            assertXpc.declareNamespace("xs", NamespaceConstant.SCHEMA);
            assertXpc.declareNamespace("math", NamespaceConstant.MATH);
            assertXpc.declareNamespace("map", NamespaceConstant.MAP_FUNCTIONS);
            assertXpc.declareVariable(new QName("result"));

            boolean b = testAssertion(assertion, outcome, assertXpc, xpc, debug);
            if (b) {
                System.err.println("OK");

                writeTestcaseElement(testCaseName, "full", null);
                successes++;

            } else {

                if (outcome.isException()) {
                    XdmItem expectedError = xpc.evaluateSingle("result//error/@code", testCase);

                    if (expectedError == null) {
//                        if (debug) {
//                            outcome.getException().printStackTrace(System.out);
//                        }
                        writeTestcaseElement(testCaseName, "fail", "Expected success, got " + outcome.getException().getErrorCode());
                        System.err.println("*** fail, result " + outcome.getException().getErrorCode() +
                                " Expected success.");
                        failures++;
                    } else {
                        writeTestcaseElement(testCaseName, "different-error", "Expected error:" + expectedError.getStringValue() + ", got " + outcome.getException().getErrorCode());
                        System.err.println("*** fail, result " + outcome.getException().getErrorCode() +
                                " Expected error:" + expectedError.getStringValue());
                        wrongErrorResults++;
                    }

                } else {
                    writeTestcaseElement(testCaseName, "fail", "Wrong results, got " + truncate(outcome.serialize(assertXpc.getProcessor())));
                    failures++;
                    if (debug) {
                        try {
                            System.err.println("Result:");
                            driverSerializer.serializeXdmValue(outcome.getResult());
                            System.err.println("=======");
                        } catch (Exception err) {
                        }
                        //System.err.println(outcome.getResult());
                    } else {
                        System.err.println("*** fail (use -debug to show actual result)");
                        //failures++;
                    }
                }
            }
        }
    }

    private String truncate(String in) {
        if (in.length() > 80) {
            return in.substring(0, 80) + "...";
        } else {
            return in;
        }
    }

    private boolean testAssertion(XdmNode assertion, Outcome outcome, XPathCompiler assertXpc, XPathCompiler catalogXpc, boolean debug)
            throws SaxonApiException {
        String tag = assertion.getNodeName().getLocalName();
        boolean result = testAssertion2(assertion, outcome, assertXpc, catalogXpc, debug);
        if (debug && !("all-of".equals(tag)) && !("any-of".equals(tag))) {
            System.err.println("Assertion " + tag + " (" + assertion.getStringValue() + ") " + (result ? " succeeded" : " failed"));
            if (tag.equals("error")) {
                System.err.println("Expected exception " + assertion.getAttributeValue(new QName("code")) +
                        ", got " + (outcome.isException() ? outcome.getException().getErrorCode() : "success"));
            }
        }
        return result;
    }

    private boolean testAssertion2(XdmNode assertion, Outcome outcome, XPathCompiler assertXpc, XPathCompiler catalogXpc, boolean debug) throws SaxonApiException {
        String tag = assertion.getNodeName().getLocalName();

        if (tag.equals("assert-eq")) {
            if (outcome.isException()) {
                return false;
            } else {
                XPathSelector s = assertXpc.compile("$result eq " + assertion.getStringValue()).load();
                s.setVariable(new QName("result"), outcome.getResult());
                XdmAtomicValue item = (XdmAtomicValue) s.evaluateSingle();
                if (s == null) {
                    return false;
                }
                return item.getBooleanValue();
            }
        }
        if (tag.equals("assert-deep-eq")) {
            if (outcome.isException()) {
                return false;
            } else {
                XPathSelector s = assertXpc.compile("deep-equal($result , (" + assertion.getStringValue() + "))").load();
                s.setVariable(new QName("result"), outcome.getResult());
                return ((XdmAtomicValue) s.evaluate()).getBooleanValue();
            }
        } else if (tag.equals("assert-permutation")) {
            // TODO: extend this to handle nodes (if required)
            if (outcome.isException()) {
                return false;
            } else {
                try {
                    int expectedItems = 0;
                    HashSet expected = new HashSet();
                    XPathSelector s = assertXpc.compile("(" + assertion.getStringValue() + ")").load();
                    s.setVariable(new QName("result"), outcome.getResult()); // not used, but we declared it
                    StringCollator collator = CodepointCollator.getInstance();
                    XPathContext context = new XPathContextMajor(StringValue.EMPTY_STRING, assertXpc.getUnderlyingStaticContext().getConfiguration());
                    for (XdmItem item : s) {
                        expectedItems++;
                        AtomicValue value = (AtomicValue) item.getUnderlyingValue();
                        Object comparable = value.isNaN() ?
                                AtomicSortComparer.COLLATION_KEY_NaN :
                                value.getXPathComparable(false, collator, context);
                        expected.add(comparable);
                    }
                    int actualItems = 0;
                    for (XdmItem item : outcome.getResult()) {
                        actualItems++;
                        AtomicValue value = (AtomicValue) item.getUnderlyingValue();
                        Object comparable = value.isNaN() ?
                                AtomicSortComparer.COLLATION_KEY_NaN :
                                value.getXPathComparable(false, collator, context);
                        if (!expected.contains(comparable)) {
                            return false;
                        }
                    }
                    return actualItems == expectedItems;
                } catch (NoDynamicContextException e) {
                    return false;
                }
            }
        } else if (tag.equals("assert-serialization")) {
            if (outcome.isException()) {
                return false;
            } else {
                String normalizeAtt = assertion.getAttributeValue(new QName("normalize-space"));
                boolean normalize = normalizeAtt != null && ("true".equals(normalizeAtt.trim()) || "1".equals(normalizeAtt.trim()));
                String ignoreAtt = assertion.getAttributeValue(new QName("ignore-prefixes"));
                boolean ignorePrefixes =  ignoreAtt != null && ("true".equals(ignoreAtt.trim()) || "1".equals(ignoreAtt.trim()));

                String comparand = catalogXpc.evaluate("if (@file) then unparsed-text(resolve-uri(@file, base-uri(.))) else string(.)", assertion).toString();
                if (normalize) {
                    comparand = Whitespace.collapseWhitespace(comparand).toString();
                }
                StringWriter sw = new StringWriter();
                Serializer serializer = assertXpc.getProcessor().newSerializer(sw);
                serializer.setOutputProperty(Property.METHOD, "xml");
                serializer.setOutputProperty(Property.INDENT, "no");
                serializer.setOutputProperty(Property.OMIT_XML_DECLARATION, "yes");
                serializer.serializeXdmValue(outcome.getResult());
                if (comparand.equals(sw.toString())) {
                    return true;
                }
                DocumentBuilder builder = assertXpc.getProcessor().newDocumentBuilder();
                StringReader reader = new StringReader("<z>" + comparand + "</z>");
                XdmNode expected = builder.build(new StreamSource(reader));

                int flag = 0;

                flag |= net.sf.saxon.functions.DeepEqual.INCLUDE_COMMENTS;
                flag |= net.sf.saxon.functions.DeepEqual.INCLUDE_PROCESSING_INSTRUCTIONS;
                if (!ignorePrefixes) {
                    flag |= net.sf.saxon.functions.DeepEqual.INCLUDE_NAMESPACES;
                    flag |= net.sf.saxon.functions.DeepEqual.INCLUDE_PREFIXES;
                }
                flag |= net.sf.saxon.functions.DeepEqual.COMPARE_STRING_VALUES;
                flag |= net.sf.saxon.functions.DeepEqual.WARNING_IF_FALSE;
                try {
                    SequenceIterator iter0;
                    XdmValue v = outcome.getResult();
                    if (v.size() == 1 && v.itemAt(0) instanceof XdmNode && ((XdmNode)v.itemAt(0)).getNodeKind() == XdmNodeKind.DOCUMENT) {
                        iter0 = ((XdmNode)v.itemAt(0)).getUnderlyingNode().iterateAxis(net.sf.saxon.om.Axis.CHILD);
                    } else {
                        iter0 = Value.asIterator(outcome.getResult().getUnderlyingValue());
                    }
                    SequenceIterator iter1 = ((NodeInfo)expected.axisIterator(Axis.CHILD).next()
                            .getUnderlyingValue()).iterateAxis(net.sf.saxon.om.Axis.CHILD);
                    return net.sf.saxon.functions.DeepEqual.deepEquals(
                            iter0, iter1,
                            new GenericAtomicComparer(CodepointCollator.getInstance(), null),
                            assertXpc.getProcessor().getUnderlyingConfiguration(), flag);
                } catch (XPathException e) {
                    e.printStackTrace();
                    return false;
                }
            }
        } else if (tag.equals("assert-serialization-error")) {
            if (outcome.isException()) {
                return false;
            } else {
                String expectedError = assertion.getAttributeValue(new QName("code"));
                StringWriter sw = new StringWriter();
                Serializer serializer = assertXpc.getProcessor().newSerializer(sw);
                serializer.setOutputProperty(Property.METHOD, "xml");
                serializer.setOutputProperty(Property.INDENT, "no");
                serializer.setOutputProperty(Property.OMIT_XML_DECLARATION, "yes");
                try {
                    serializer.serializeXdmValue(outcome.getResult());
                    return false;
                } catch (SaxonApiException err) {
                    boolean b = expectedError.equals(err.getErrorCode().getLocalName());
                    if (!b) {
                        System.err.println("Expected " + expectedError + ", got " + err.getErrorCode().getLocalName());
                    }
                    return true;
                }
            }
        } else if (tag.equals("assert-empty")) {
            if (outcome.isException()) {
                return false;
            } else {
                XdmValue result = outcome.getResult();
                return result.size() == 0;
            }
        } else if (tag.equals("assert-count")) {
            if (outcome.isException()) {
                return false;
            } else {
                XdmValue result = outcome.getResult();
                return result.size() == Integer.parseInt(assertion.getStringValue());
            }
        } else if (tag.equals("assert")) {
            if (outcome.isException()) {
                return false;
            } else {
                XPathSelector s = assertXpc.compile(assertion.getStringValue()).load();
                s.setVariable(new QName("result"), outcome.getResult());
                return ((XdmAtomicValue) s.evaluateSingle()).getBooleanValue();
            }
        } else if (tag.equals("assert-string-value")) {
            if (outcome.isException()) {
                return false;
            } else {
                XdmValue resultValue = outcome.getResult();
                String resultString;
                String assertionString = assertion.getStringValue();
                if (resultValue instanceof XdmItem) {
                    resultString = ((XdmItem)resultValue).getStringValue();
                } else {
                    boolean first = true;
                    FastStringBuffer fsb = new FastStringBuffer(256);
                    for (XdmItem item : resultValue) {
                        if (first) {
                            first = false;
                        } else {
                            fsb.append(' ');
                        }
                        fsb.append(item.getStringValue());
                    }
                    resultString = fsb.toString();
                }
                String normalizeAtt = assertion.getAttributeValue(new QName("normalize-space"));
                if (normalizeAtt != null && (normalizeAtt.trim().equals("true") || normalizeAtt.trim().equals("1"))) {
                    assertionString = Whitespace.collapseWhitespace(assertionString).toString();
                    resultString = Whitespace.collapseWhitespace(resultString).toString();
                }
                if (resultString.equals(assertionString)) {
                    return true;
                } else {
                    if (debug) {
                        if (resultString.length() != assertionString.length()) {
                            System.err.println("Result length " + resultString.length() + "; expected length " + assertionString.length());
                        }
                        int len = Math.min(resultString.length(), assertionString.length());
                        for (int i = 0; i < len; i++) {
                            if (resultString.charAt(i) != assertionString.charAt(i)) {
                                System.err.println("Results differ at index " + i +
                                        "(\"" + resultString.substring(i, (i + 10 > len ? len : i + 10)) + "\") vs (\"" +
                                        assertionString.substring(i, (i + 10 > len ? len : i + 10)) + "\")");
                                break;
                            }
                        }
                    }
                    return false;
                }
            }
        } else if (tag.equals("assert-type")) {
            if (outcome.isException()) {
                return false;
            } else {
                XPathSelector s = assertXpc.compile("$result instance of " + assertion.getStringValue()).load();
                s.setVariable(new QName("result"), outcome.getResult());
                return ((XdmAtomicValue) s.evaluateSingle()).getBooleanValue();
            }
        } else if (tag.equals("assert-true")) {
            if (outcome.isException()) {
                return false;
            } else {
                XdmValue result = outcome.getResult();
                return result.size() == 1 &&
                        result.itemAt(0).isAtomicValue() &&
                        ((XdmAtomicValue) result.itemAt(0)).getPrimitiveTypeName().equals(QName.XS_BOOLEAN) &&
                        ((XdmAtomicValue) result.itemAt(0)).getBooleanValue();
            }
        } else if (tag.equals("assert-false")) {
            if (outcome.isException()) {
                return false;
            } else {
                XdmValue result = outcome.getResult();
                return result.size() == 1 &&
                        result.itemAt(0).isAtomicValue() &&
                        ((XdmAtomicValue) result.itemAt(0)).getPrimitiveTypeName().equals(QName.XS_BOOLEAN) &&
                        !((XdmAtomicValue) result.itemAt(0)).getBooleanValue();
            }
        } else if (tag.equals("error")) {
            String expectedError = assertion.getAttributeValue(new QName("code"));
            //noinspection ThrowableResultOfMethodCallIgnored
            return outcome.isException() &&
                    (expectedError.equals("*") ||
                        (outcome.getException().getErrorCode() != null &&
                         outcome.getException().getErrorCode().getLocalName().equals(expectedError)));
        } else if (tag.equals("all-of")) {
            for (XdmItem child : catalogXpc.evaluate("*", assertion)) {
                if (!testAssertion((XdmNode) child, outcome, assertXpc, catalogXpc, debug)) {
                    return false;
                }
            }
            return true;
        } else if (tag.equals("any-of")) {
            for (XdmItem child : catalogXpc.evaluate("*", assertion)) {
                if (testAssertion((XdmNode) child, outcome, assertXpc, catalogXpc, debug)) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalStateException("Unknown assertion element " + tag);
    }


    private void writeResultFilePreamble(Processor processor, XdmNode catalog, String date) throws IOException, SaxonApiException, XMLStreamException {
        Writer resultWriter = new BufferedWriter(new FileWriter(new File(/*testSuiteDir + */"results/saxon/results"
                + Version.getProductVersion() + ".xml")));
        Serializer serializer = processor.newSerializer(resultWriter);
        serializer.setOutputProperty(Serializer.Property.METHOD, "xml");
        serializer.setOutputProperty(Serializer.Property.INDENT, "yes");
        serializer.setOutputProperty(Serializer.Property.SAXON_LINE_LENGTH, "120");

        results = serializer.getXMLStreamWriter();

        results.writeStartElement("FOTS-test-suite-result");
        results.writeDefaultNamespace(RNS);
        results.writeStartElement("implementation");
        results.writeAttribute("name", "Saxon-EE");
        results.writeAttribute("version", Version.getProductVersion());
        results.writeAttribute("anonymous-result-column", "false");
        results.writeEmptyElement("organization");
        results.writeAttribute("name", "http://www.saxonica.com/");
        results.writeAttribute("anonymous", "false");
        results.writeEmptyElement("submitter");
        results.writeAttribute("name", "Michael Kay");
        results.writeAttribute("email", "mike@saxonica.com");
        results.writeEndElement(); //implementation
        results.writeEmptyElement("test-run");
        results.writeAttribute("dateRun", date);
        results.writeAttribute("testsuiteVersion",
                catalog.getAttributeValue(new QName("test-suite")) + " " + catalog.getAttributeValue(new QName("version")));
    }

    private void writeResultFilePostamble() throws XMLStreamException {
        results.writeEndElement(); //test-suite-result
        results.close();
    }

    private void writeTestcaseElement(String name, String result, String comment) {
        try {
            results.writeEmptyElement("testcase");
            results.writeAttribute("name", name);
            results.writeAttribute("result", result);
            if (comment != null) {
                results.writeAttribute("comment", comment);
            }
        } catch (XMLStreamException ex) {
        }
    }

    /**
     * Implement extension function fots:copy() which copies an existing node to create
     * a new parentless node. Needed because XPath cannot create parentless nodes directly
     */

    private static class FotsCopyFunction extends ExtensionFunctionDefinition {
        @Override
        public StructuredQName getFunctionQName() {
            return new StructuredQName("", "http://www.w3.org/2010/09/qt-fots-catalog", "copy");
        }

        @Override
        public int getMinimumNumberOfArguments() {
            return 1;
        }

        @Override
        public int getMaximumNumberOfArguments() {
            return 1;
        }

        @Override
        public SequenceType[] getArgumentTypes() {
            return new SequenceType[]{SequenceType.SINGLE_NODE};
        }

        @Override
        public SequenceType getResultType(SequenceType[] suppliedArgumentTypes) {
            return SequenceType.SINGLE_NODE;
        }

        @Override
        public boolean hasSideEffects() {
            return true;
        }

        @Override
        public ExtensionFunctionCall makeCallExpression() {
            return new ExtensionFunctionCall() {
                public SequenceIterator call(SequenceIterator[] arguments, XPathContext context) throws XPathException {
                    NodeInfo node = (NodeInfo) arguments[0].next();
                    if (node == null) {
                        return EmptyIterator.getInstance();
                    } else {
                        switch (node.getNodeKind()) {
                            case Type.ELEMENT:
                            case Type.DOCUMENT: {
                                Builder builder = context.getController().makeBuilder();
                                builder.open();
                                node.copy(builder, NodeInfo.ALL_NAMESPACES, 0);
                                builder.close();
                                return SingleNodeIterator.makeIterator(builder.getCurrentRoot());
                            }
                            case Type.ATTRIBUTE:
                            case Type.TEXT:
                            case Type.PROCESSING_INSTRUCTION:
                            case Type.COMMENT:
                            case Type.NAMESPACE:
                                Orphan orphan = new Orphan(context.getConfiguration());
                                orphan.setNodeKind((short) node.getNodeKind());
                                orphan.setNameCode(node.getNameCode());
                                orphan.setStringValue(node.getStringValue());
                                return SingleNodeIterator.makeIterator(orphan);
                            default:
                                throw new IllegalArgumentException("Unknown node kind " + node.getNodeKind());
                        }
                    }
                }
            };
        }
    }

    public static class ModuleResolver extends StandardModuleURIResolver {

        XPathCompiler catXPC;
        XdmNode testCase;

        public ModuleResolver(XPathCompiler xpc) {
            this.catXPC = xpc;
        }

        public void setTestCase(XdmNode testCase) {
            this.testCase = testCase;
        }

        public StreamSource[] resolve(String moduleURI, String baseURI, String[] locations) throws XPathException {
            try {
                XdmValue file = catXPC.evaluate("./module[@uri='" + moduleURI + "']/@file/string()", testCase);
                if (file.size() == 0) {
                    throw new XPathException("Failed to find module entry for " + moduleURI);
                }
                URI uri = testCase.getBaseURI().resolve(file.toString());
                StreamSource ss = getQuerySource(uri);
                return new StreamSource[]{ss};
            } catch (SaxonApiException e) {
                throw new XPathException(e);
            }
        }
    }

    public class TestURIResolver implements URIResolver {
        Environment env;
        public TestURIResolver(Environment env) {
            this.env = env;
        }
        public Source resolve(String href, String base) throws TransformerException {
            XdmNode node = env.sourceDocs.get(href);
            if (node == null) {
                return null;
            } else {
                return node.asSource();
            }
        }
    }


}

//
// The contents of this file are subject to the Mozilla Public License Version
// 1.0 (the "License");
// you may not use this file except in compliance with the License. You may
// obtain a copy of the
// License at http://www.mozilla.org/MPL/
//
// Software distributed under the License is distributed on an "AS IS" basis,
// WITHOUT WARRANTY OF ANY KIND, either express or implied.
// See the License for the specific language governing rights and limitations
// under the License.
//
// The Original Code is: all this file.
//
// The Initial Developer of the Original Code is Michael Kay,
//
// Portions created by (your name) are Copyright (C) (your legal entity). All
// Rights Reserved.
//
// Contributor(s): none.
//



