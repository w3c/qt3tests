xquery version "3.1";

import module namespace other = "http://example.com/other" at "other.xqm";

<result>
    <other>{other:do("hello", "world")}</other>
    <transitive>{fn:function-lookup(fn:QName("http://example.com/impl", "f1"), 2)("oh", "dear")}</transitive>
</result>