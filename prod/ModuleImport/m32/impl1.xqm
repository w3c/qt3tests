xquery version "1.0";

module namespace impl = "http://example.com/impl";

declare function impl:f1($a as xs:string) as xs:string {
    $a
};