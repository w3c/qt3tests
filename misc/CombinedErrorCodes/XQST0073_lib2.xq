(: Name: XQST0073_lib2 :)
(: Description: Test generating XQST0073 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace bar = "http://www.cbcl.co.uk/bar";
import module namespace foo = "http://www.cbcl.co.uk/foo";

declare function bar:function()
{
  foo:function()
};

