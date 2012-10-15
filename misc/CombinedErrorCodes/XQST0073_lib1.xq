(: Name: XQST0073_lib1 :)
(: Description: Test generating XQST0073 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace foo = "http://www.cbcl.co.uk/foo";
import module namespace bar = "http://www.cbcl.co.uk/bar";

declare function foo:function()
{
  bar:function()
};
