xquery version "1.0";

import module namespace impl = "http://example.com/impl" at "impl1.xqm", "impl2.xqm";

<result>
    <impl>{impl:f1("hello")}</impl>
    <other>{impl:f1("hello", "world")}</other>
</result>