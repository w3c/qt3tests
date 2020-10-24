xquery version "1.0";

import module namespace impl = "http://example.com/impl" at "impl1.xqm";
import module namespace other = "http://example.com/other" at "other.xqm";

<result>
    <impl>{impl:f1("hello")}</impl>
    <other>{other:do("hello", "world")}</other>
</result>