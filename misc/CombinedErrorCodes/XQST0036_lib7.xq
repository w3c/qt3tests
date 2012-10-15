(: Name: XQST0036_lib7 :)
(: Description: Test generating XQST0036 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace test = "http://www.cbcl.co.uk/2007/test";

import schema default element namespace "http://www.cbcl.co.uk/2007/schema/XQST0036";
declare default function namespace "http://www.cbcl.co.uk/2007/schema/XQST0036";
declare namespace schema = "http://www.cbcl.co.uk/2007/schema/XQST0036";

declare function test:attrs() as schema-attribute(schema:attr)*
{
()
};
