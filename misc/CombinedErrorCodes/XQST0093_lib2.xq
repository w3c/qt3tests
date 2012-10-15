(: Name: XQST0093_lib2 :)
(: Description: Test generating XQST0093 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace foo = "http://www.cbcl.co.uk/foo";
import module namespace foo = "http://www.cbcl.co.uk/foo";

declare variable $foo:variable := 1;

declare variable $foo:variable2 := foo:function();
