package org.w3c.xqparser;


import java.io.*;
import java.net.URI;
import java.net.URISyntaxException;

/**
 * Title: Description: Copyright
 *
 * @author O'Neil Delpratt
 * @version 1.0
 */
public class ConvertToXQueryX {

    public static boolean processXQueryX(String expr, String name, String filename) {
        SimpleNode node = null;
        try {
            node = parseString(expr);
        } catch (ParseException e) {
            System.out.println(name + ": " + e.getMessage());
            return false;
        } catch (TokenMgrError e) {
            System.out.println(name + ": " + e.getMessage());
            return false;
        } catch (PostParseException e) {
            System.out.println(name + ": " + e.getMessage());
            return false;
        } catch (Error e) {
            System.out.println(name + ": " + e.getMessage());
            return false;
        }

        PrintStream ps = null;
        try {
            File dirs = new File(filename);
            dirs.mkdirs();
            ps = new PrintStream(new FileOutputStream(new File(dirs, name+".xml")));
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
            return false;
        }
        ConversionController controller = null;
        try {
            controller = new ConversionController();
            controller.transform(node, ps);
            return true;
        } catch (UnsupportedEncodingException e) {
            System.out.println(name + ": " + e.getMessage());
            return false;
        } catch (RuntimeException e) {
            System.out.println(name + ": " + e.getMessage());
            return false;
        }
    }


    public static SimpleNode parseString(String str)
            throws ParseException {
        Reader reader = new StringReader(str);
        XParser parser = new XParser(reader);
        SimpleNode tree = parser.START();
        return tree;
    }

    public static void main(String[] args) {

        boolean result = processXQueryX("let $x := 1 to 10 return sum($x)", "test1", "xqueryx.xq");
        System.out.println("XQueryX: " + result);

    }

}
