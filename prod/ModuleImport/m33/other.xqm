xquery version "1.0";

module namespace other = "http://example.com/other";

import module namespace impl = "http://example.com/impl" at "http://example.com/impl2.xqm";

declare function other:do($a as xs:string, $b as xs:string) as xs:string {
    impl:f1($a, $b)
};
