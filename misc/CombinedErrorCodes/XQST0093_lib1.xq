(: Name: XQST0093_lib1 :)
(: Description: Test generating XQST0093 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace foo = "http://www.cbcl.co.uk/foo";
import module namespace bar = "http://www.cbcl.co.uk/foo";

declare function foo:function()
{
  $foo:variable
};
