<!--                                                                         -->
<!-- Stylesheet used to convert the QT3 tests into equivalent XSLT3 tests    -->
<!--                                                                         -->
<!-- Input document: fots catalog.xml                                        -->
<!--                                                                         -->
<!-- This stylesheet creates a xslt directory in the location given by the 
     variables $main-dir and xslt-dir (see below). The xslt  directory 
     contains a catalog.xml file in the format of the XSLT3 test suite,
     ExpectedTestResults and TestInputs directories. The TestInputs directory
     contains sub-directories of all the test-set, which in turn contains the 
     test-cases  as individual stylesheet files. The conversion of the FOTS 
     tests were essentially done by storing the XPath tests as a variable which 
     is then called subsequently in a choose instruction. This logic in 
     wrapped in a try-catch instruction to attempt to handle the test-cases 
     where we expect errors.                                                 -->
<!--                                                                         -->
<!-- Derived from FOTS_XSLT_Maker.xsl, which converted the tests to the old
     XSLT test suite format.                                                 -->

<!-- This converter should run with any XSLT 2.0 processor, though all
     the generated stylesheets use try/catch and therefore require XSLT 3.0.
     Source documents will be copied across only if the processor supports
     the EXPath file module                                                  -->

<!--    Author: O'Neil Delpratt and Michael Kay, Saxonica                    -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2012-07-03    Initial release of FOTS_XSLT_Maker                      -->
<!--   2013-03-13    Initial release of QT3toXSLT3converter                  -->



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:x="http://www.w3.org/1999/XSL/Transform/Alias"
    xmlns:saxon="http://saxon.sf.net/"
    xmlns:file="http://expath.org/ns/file"
    xmlns:fots="http://www.w3.org/2010/09/qt-fots-catalog" 
    exclude-result-prefixes="fots xsl x saxon file"
    version="2.0">
    
    <!-- The principal source document is the catalog.xml file of the QT3 test suite -->

    <xsl:output indent="yes"/>
    
    <!-- Apply validation to the result documents (but not the source documents) -->
    
    <xsl:import-schema namespace="http://www.w3.org/2012/10/xslt-test-catalog" schema-location="xslt3-catalog-schema.xsd"/>

    <!-- main-dir is the directory containing the QT3 catalog file catalog.xml -->
    <xsl:param name="main-dir" select="substring-before(static-base-uri(), 'tools')"/>
    
    <!-- xslt-dir is the directory where the XSLT3 tests will be generated. By default they
    are generated in a directory that is created as a sibling of the QT3 directory -->
    
    <xsl:param name="xslt-dir" select="concat($main-dir,'../qt3-xslt/')"/>

    <xsl:namespace-alias stylesheet-prefix="x" result-prefix="xsl"/>

    <xsl:variable name="globalEnvironments" select="fots:catalog/fots:environment"/>

    <xsl:template match="fots:catalog">
        
        <!-- Create main catalog file                                   -->
        <xsl:result-document href="{$xslt-dir}catalog.xml" validation="strict">
            <catalog xmlns="http://www.w3.org/2012/10/xslt-test-catalog">
                <xsl:apply-templates select="fots:environment" mode="rename"/>
                <xsl:for-each select="fots:test-set">
                    <test-set name="{@name}" file="{replace(@file, '/', concat('/', substring-after(@name, '-'), '/_'))}"/>
                </xsl:for-each>
            </catalog>
        </xsl:result-document>
        
        <xsl:apply-templates select="fots:test-set"/>
        
        <xsl:if test="true()" use-when="function-available('file:copy', 2)">
            <xsl:variable name="from" select="concat($main-dir, 'docs')"/>
            <xsl:variable name="to" select="concat($xslt-dir, 'docs')"/>
            <xsl:sequence select="file:copy($from, $to)"/>
            
            <!-- Some ad-hoc copying of files that are needed, but not referenced from their local test-set -->
            
            <xsl:sequence select="file:copy(concat($main-dir, 'fn/id'), concat($xslt-dir, 'fn/id'))"/>
            
        </xsl:if>

    </xsl:template>

    <xsl:template match="fots:catalog/fots:test-set">
        <xsl:variable name="testSetFile" select="concat($main-dir,@file)"/>
        <xsl:variable name="testSetName" select="@name"/>
        
        <xsl:result-document href="{$xslt-dir}{replace(@file, '/', concat('/', substring-after(@name, '-'), '/_'))}"
            validation="strict">
            <test-set xmlns="http://www.w3.org/2012/10/xslt-test-catalog" name="{$testSetName}">
                <xsl:variable name="target" select="document(@file)"/>
                <xsl:variable name="targetUri" select="document-uri($target)"/>
                <xsl:variable name="target" select="saxon:discard-document($target)" use-when="function-available('saxon:discard-document', 1)"/>
                <xsl:variable name="targetTestSet" select="$target/fots:test-set"/>
                <xsl:message use-when="true()">Processing <xsl:value-of select="$targetUri"/></xsl:message>
                <xsl:apply-templates select="$targetTestSet/fots:environment" mode="rename"/>
                <xsl:if test="$targetTestSet/fots:dependency">
                    <dependencies>
                        <xsl:apply-templates select="$targetTestSet/fots:dependency" mode="rename"/> 
                    </dependencies>
                </xsl:if>                
                <xsl:apply-templates select="$targetTestSet/fots:test-case">
                    <xsl:with-param name="testSetFile" select="$testSetFile"/>
                    <xsl:with-param name="testSetDependency"
                        select="$targetTestSet/fots:dependency[@type='spec']"/>
                    <xsl:with-param name="tsEnvironments"
                        select="$targetTestSet/fots:environment"/>
                </xsl:apply-templates>
            </test-set>    
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="fots:*" mode="rename">
        <xsl:element name="{local-name()}" namespace="http://www.w3.org/2012/10/xslt-test-catalog">
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates mode="rename"/>
        </xsl:element>       
    </xsl:template>
    
    <xsl:template match="@*">
        <xsl:copy/>
    </xsl:template>
    
    <xsl:template match="@declared"/>
    <xsl:template match="fots:test-case/fots:environment/@name"/>
    
    <xsl:template match="fots:dependency" mode="rename">
        <xsl:element name="{@type}" namespace="http://www.w3.org/2012/10/xslt-test-catalog">
            <xsl:copy-of select="@value"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='spec']" mode="rename">
        <spec xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="XSLT30+"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='feature'][@value='higherOrderFunctions']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='feature'][@value='staticTyping']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='feature'][@value='namespace-axis']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='feature'][@value='collection-stability']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='feature'][@value='directory-as-collection-uri']" mode="rename"/>
    
    <xsl:template match="fots:dependency[@type='feature'][@value='xpath-1.0-compatibility']" mode="rename">
        <feature xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="backwards_compatibility"/> 
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='feature'][@value=('schemaValidation', 'schemaImport')]" mode="rename">
        <feature xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="schema_aware"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='xsd-version'][@value='1.1']" mode="rename">
        <feature xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="XSD_1.1"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='xsd-version'][@value='1.0']" mode="rename">
        <feature xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="XSD_1.1" satisfied="false"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='xml-version'][@value='1.1']" mode="rename">
        <feature xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="XML_1.1"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='xml-version'][@value='1.0']" mode="rename">
        <feature xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="XML_1.1" satisfied="false"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='language']" mode="rename">
        <languages_for_numbering xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="{@value}"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='default-language']" mode="rename">
        <default_language_for_numbering xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="{@value}"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='unicode-normalization-form']" mode="rename">
        <additional_normalization_form xmlns="http://www.w3.org/2012/10/xslt-test-catalog" value="support {@value}"/>
    </xsl:template>
    
    <xsl:template match="fots:dependency[@type='language'][@value='xib']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='limits']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='calendar']" mode="rename"/>
    <xsl:template match="fots:dependency[@type='format-integer-sequence']" mode="rename"/>
    
    <xsl:template match="fots:environment/fots:static-base-uri" mode="rename"/>
    <xsl:template match="fots:environment/fots:namespace" mode="rename"/>
    <xsl:template match="fots:environment/fots:decimal-format" mode="rename"/>
    
    <xsl:template match="fots:source | fots:schema | fots:resource" mode="rename">
        <xsl:element name="{local-name()}" namespace="http://www.w3.org/2012/10/xslt-test-catalog">
            <xsl:copy-of select="@* except @file"/>
            <xsl:attribute name="file" select="if (ancestor::fots:catalog) then @file else concat('../', @file)"/>
            <xsl:apply-templates mode="rename"/>
        </xsl:element>
        <xsl:call-template name="copy-source-file" use-when="function-available('file:copy', 2)"/>
    </xsl:template>
    
    <xsl:template name="copy-source-file"  use-when="function-available('file:copy', 2)">
        <xsl:variable name="dir" select="substring-before(@file, '/')"/>
        <xsl:if test="$dir = /fots:test-set/substring-after(@name, '-')">
            <xsl:variable name="from" select="concat($main-dir, substring-before(/fots:test-set/@name, '-'), '/', @file)"/>
            <xsl:variable name="to" select="concat($xslt-dir, substring-before(/fots:test-set/@name, '-'), '/', @file)"/>
            <xsl:sequence select="file:copy($from, $to)"/>
        </xsl:if>           
    </xsl:template>
       
    <xsl:template match="fots:test-case">
        <xsl:param name="testSetDependency" as="element(fots:dependency)*"/>
        <xsl:param name="tsEnvironments" as="element(fots:environment)*"/>
        <xsl:param name="testSetFile"/>
        
        <xsl:variable name="test" select="fots:test"/>

        <xsl:variable name="testCaseDependency" select="fots:dependency[@type='spec']"/>

        <xsl:variable name="specDependency" select="if(matches($testCaseDependency/@value, 'XQ') and not(matches($testCaseDependency/@value, 'XT|XP'))) then $testCaseDependency else  ($testCaseDependency, $testSetDependency)"/>

        <xsl:variable name="requiredFeatures"
            select="(fots:dependency | ../fots:dependency)[@type='feature']"/>

        <xsl:variable name="name" select="@name"/>
        
        <xsl:variable name="checkForXT"
            select="($specDependency[matches(@value, 'XT|XP') 
                         and not(contains(@value, 'XP20') and not(contains(@value, 'XP20+')))] or not($specDependency))
                    and not($requiredFeatures[@value='staticTyping'])
                    and not(@name = $excluded-tests)"/>
        
        <xsl:variable name="env" as="element(fots:environment)?"
            select = "( fots:environment[not(@ref)],
            $tsEnvironments[@name = current()/fots:environment/@ref],
            $globalEnvironments[@name = current()/fots:environment/@ref] )[1]"/>
        

        <xsl:if test="$checkForXT">
            
            <test-case  xmlns="http://www.w3.org/2012/10/xslt-test-catalog" name="{@name}">
                <xsl:apply-templates select="fots:description, fots:created, fots:modified, fots:environment" mode="rename"/>
                <dependencies>
                    <spec value="XSLT30+"/>
                    <xsl:apply-templates select="fots:dependency[not(@type='spec')]" mode="rename"/>
                </dependencies>
                <test>
                    <stylesheet file="{@name}.xsl" role="principal"/>
                    <initial-template name="main"/>
                </test>
                <result>
                    <xsl:apply-templates select="fots:result/*" mode="resultAfterCatch"/>
<!--
                    <xsl:choose>
                        <xsl:when test="fots:result//fots:error[matches(@code, 'X.ST....') and not(@code='XPST0005')] and not(contains(fots:test, 'fn:error('))">
                            <error code="{(fots:result//fots:error/@code)[1]}"/>
                        </xsl:when>
                        <xsl:when test="fots:result//fots:error[matches(@code, '..TY....') or @code='FORG0006']">
                            <any-of>
                                <assert>/ok</assert>
                                <error code="{(fots:result//fots:error/@code)[1]}"/>
                            </any-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <assert>/ok</assert>
                        </xsl:otherwise>
                    </xsl:choose>-->
                </result>
            </test-case>
            
  

            <xsl:variable name="version"
                select="if($specDependency and $specDependency[matches(@value, 'XT20|XP20')]) then xs:string('2.0') else xs:string('3.0')"/>
 
 
            <!-- Create an xslt file which contains a specific test-case                        -->
            <xsl:result-document
                href="{$xslt-dir}{replace(../@name, '^([a-zA-Z0-9]+)-', '$1/')}/{$name}.xsl"
                omit-xml-declaration="yes" indent="yes" validation="strip">

                <x:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                    xmlns:fn="http://www.w3.org/2005/xpath-functions"
                    xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xmlns:err="http://www.w3.org/2005/xqt-errors" 
                    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                    exclude-result-prefixes="fn err math map xs"
                    version="3.0">
                    <!-- always version='3.0' because it needs try/catch -->
                    <!-- TODO: could avoid the try/catch (and generate 2.0) if we are not expecting any errors -->
                    
                    <xsl:if test="$env/fots:static-base-uri[@uri != '#UNDEFINED']">
                        <xsl:attribute name="xml:base" select="$env/fots:static-base-uri/@uri"/>
                    </xsl:if>
                    <xsl:apply-templates select="$env" mode="namespaces"/>
                    <xsl:text>&#10;</xsl:text>
                    <xsl:comment><xsl:value-of select="$name"/>:<xsl:value-of select="fots:description"/></xsl:comment>
                    <xsl:text>&#10;</xsl:text>
                                       
                    <xsl:apply-templates select="$env" mode="global"/>
                    
                    <x:template name="main">
                        
                        <xsl:apply-templates select="$env" mode="local-vars"/>

                        <x:try>
                            <x:variable name="result" select="{$test}">
                                <xsl:if test="fots:dependency[@type='feature'][@value='xpath-1.0-compatibility']">
                                    <xsl:attribute name="version" select="'1.0'"/>
                                </xsl:if>
                            </x:variable>    
                            <xsl:apply-templates select="fots:result"/>
                            <x:catch>
                                <xsl:choose>
                                    <xsl:when test="empty(fots:result//fots:error)">
                                        <fail>
                                            <xsl:attribute name="code">{$err:code}</xsl:attribute>
                                            <xsl:attribute name="message">{$err:description}</xsl:attribute>
                                            <xsl:attribute name="line">{$err:line-number}</xsl:attribute>
                                        </fail>
                                    </xsl:when>
                                    <xsl:when test="fots:result//fots:error[self::*/@code='*']">
                                        <ok/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <x:choose>
                                            <xsl:for-each select="fots:result//fots:error">
                                              <x:when test="local-name-from-QName($err:code)='{@code}'">
                                                <ok/>
                                              </x:when>
                                            </xsl:for-each>
                                            <x:otherwise>
                                                <ok wrongError="expected {string-join(fots:result//fots:error/@code, ' or ')}, got {{$err:code}}"/>
                                            </x:otherwise>
                                        </x:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </x:catch>
                        </x:try>
                    </x:template>

                </x:stylesheet>

            </xsl:result-document>

        </xsl:if>

    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <!--                                                                      -->
    <!--  Generate global declarations corresponding to the environment       -->
    <!--                                                                      -->
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <xsl:template match="fots:environment" mode="global">
        <xsl:apply-templates mode="global"/>
    </xsl:template>
    
    <xsl:template match="*" mode="global"/>
    
    <xsl:template match="fots:param" mode="global">
        <x:param name="{@name}" as="{@as}" select="{@select}" required="no"/>
    </xsl:template>
    
    <xsl:template match="fots:decimal-format" mode="global">
        <x:decimal-format>
            <xsl:copy-of select="@* | namespace::*"/>
        </x:decimal-format>    
    </xsl:template>
    

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <!--                                                                      -->
    <!-- Generate:                                                            -->
    <!--       text to handle the various types of assertions within the XSLT -->
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <xsl:template match="fots:assert-true">
        <x:choose>
            <x:when test="count($result)=1 and $result=true()">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-false">
        <x:choose>
            <x:when test="count($result)=1 and $result=false()">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-string-value">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="string-join($result!string(), ' ')  eq '{$assertion}'">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>
    
    <xsl:template match="fots:assert-string-value[string(@normalize-space)='true']">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="normalize-space(string-join($result!string(), ' '))  eq '{normalize-space($assertion)}'">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-eq">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="$result eq {$assertion}">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-deep-eq">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="deep-equal($result, ({$assertion}))">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-empty">
        <x:choose>
            <x:when test="count($result) = 0">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-count">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="count($result) = {$assertion}">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-type">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="$result instance of {$assertion}">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>
    
    <xsl:template match="fots:assert-permutation">
        <xsl:variable name="assertion" select="."/>
        <x:variable name="expected" select="{$assertion}"/>
        <x:choose>
            <x:when test="count($result) eq count($expected) and (every $r in $result satisfies exists(index-of($expected, $r)))">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>
    
    <xsl:template match="fots:assert-xml">
        <xsl:variable name="assertion" select="."/>
        <x:variable name="expected">
            <xsl:value-of select="if (@file) then unparsed-text(resolve-uri(@file, base-uri(.))) else $assertion"/>
        </x:variable>       
        <x:variable name="expected-xml" select="parse-xml-fragment($expected)"/>
        <x:variable name="actual-xml">
            <x:copy-of select="$result" />
        </x:variable>
        <x:choose>
            <x:when test="deep-equal($expected-xml, $actual-xml)">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert">
        <xsl:variable name="assertion" select="."/>
        <x:choose>
            <x:when test="{$assertion}">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail><x:copy-of select="$result"/></fail>
            </x:otherwise>
        </x:choose>
    </xsl:template>
    
    <xsl:template match="fots:any-of">
        <x:variable name="anyVar" as="element()*">
            <xsl:apply-templates select="child::*"/>
        </x:variable>
        <x:choose>
            <x:when test="empty($anyVar[self::ok])">
                <x:copy-of select="$anyVar[self::fail][1]"/>                
            </x:when>
            <x:otherwise>
                <ok/>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:all-of">
        <x:variable name="allVar" as="element()*">
            <xsl:apply-templates select="child::*"/>
        </x:variable>
        <x:choose>
            <x:when test="empty($allVar[self::fail])">
                <ok/>
            </x:when>
            <x:otherwise>
                <x:copy-of select="$allVar[self::fail][1]"/>
            </x:otherwise>
        </x:choose>
    </xsl:template>
    
    <xsl:template match="fots:error">
        <fail reason="error not detected">
            <x:copy-of select="$result"/>
        </fail>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <!-- Generate code to handle the assertions in the output metadata        -->    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    
    <xsl:function name="fots:isStaticError" as="xs:boolean">
        <xsl:param name="assertion" as="element()"/>
        <xsl:sequence select="$assertion/(
            (not(contains(ancestor::fots:test-case/fots:test, 'fn:error('))) and
            ((self::fots:error and matches(@code, 'X.ST....') and not(@code='XPST0005'))
             or (self::fots:all-of and (every $a in * satisfies fots:isStaticError($a)))
            ))"/>
    </xsl:function>
    
    <xsl:function name="fots:isTypeError" as="xs:boolean">
        <xsl:param name="assertion" as="element()"/>
        <xsl:sequence select="matches($assertion/@code, '..TY....') or $assertion/@code=('FORG0006', 'XPDY0002')"/>
    </xsl:function>
    
    
    
    
    <xsl:template match="*" mode="resultAfterCatch">
        <assert xmlns="http://www.w3.org/2012/10/xslt-test-catalog">/ok</assert>
    </xsl:template>
    
    <xsl:template match="fots:any-of" mode="resultAfterCatch">
        <xsl:choose>
            <xsl:when test="every $a in * satisfies fots:isStaticError($a)">
                <xsl:apply-templates select="." mode="rename"/>
            </xsl:when>
            <xsl:when test="some $a in * satisfies (fots:isStaticError($a) or fots:isTypeError($a))">
                <any-of xmlns="http://www.w3.org/2012/10/xslt-test-catalog">
                    <assert>/ok</assert>
                    <xsl:apply-templates select="*[fots:isStaticError(.) or fots:isTypeError(.)]" mode="rename"/>
                </any-of>
            </xsl:when>
            <xsl:otherwise>
                <assert xmlns="http://www.w3.org/2012/10/xslt-test-catalog">/ok</assert>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="*[fots:isStaticError(.)]" mode="resultAfterCatch">
        <xsl:apply-templates select="." mode="rename"/>
    </xsl:template>
    
    <xsl:template match="*[fots:isTypeError(.)]" mode="resultAfterCatch">
        <any-of xmlns="http://www.w3.org/2012/10/xslt-test-catalog">
            <assert>/ok</assert>
            <xsl:apply-templates select="." mode="rename"/>
        </any-of>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <!--                                                                      -->
    <!-- Generate:                                                            -->
    <!--       handle source documents as a variable                          -->
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

    <xsl:template match="*" mode="local-vars">
        <!-- default is to ignore environment items unless required -->
    </xsl:template>

    <xsl:template match="fots:source[@role='.']" mode="local-vars">
        <!-- no special action needed: the source doc will be the context item -->
    </xsl:template>
    
    <xsl:template match="fots:source[starts-with(@role,'$')]" mode="local-vars">
        <x:variable name="{substring(@role,2)}" select="doc({if (ancestor::fots:catalog) then @file else concat('../', @file)})"/>
    </xsl:template>

    <xsl:template match="fots:param" mode="local-vars">
        <x:variable name="{@name}" select="doc('{$xslt-dir}{@select}')"/>
    </xsl:template>
    
    <xsl:template match="fots:environment" mode="local-vars">
        <xsl:apply-templates select="fots:source" mode="local-vars"/>
    </xsl:template>
    
    <!-- Generate additional namespaces required by the XPath expression under test -->
    
    <xsl:template match="fots:environment" mode="namespaces">
        <xsl:apply-templates select="fots:namespace" mode="namespaces"/>
    </xsl:template>
    
    <xsl:template match="fots:namespace[@prefix='']" mode="namespaces">
        <xsl:attribute name="xpath-default-namespace" select="@uri"/>
    </xsl:template>
    
    <xsl:template match="fots:namespace[@prefix!='']" mode="namespaces">
        <xsl:namespace name="{@prefix}" select="@uri"/>
    </xsl:template>
    
    <!-- Test that are not converted because they aren't designed to work in an XSLT environment,
    or because the conversion machinery is not up to the job -->
    
    <xsl:variable name="exclusions">
        K-FunctionCallExpr-22
        K-FunctionCallExpr-23
        K-FunctionCallExpr-24
        K-FunctionCallExpr-25
        K2-FunctionCallExpr-2
        K2-FunctionCallExpr-3
        K2-FunctionCallExpr-4
        K2-FunctionCallExpr-5
        K2-FunctionCallExpr-8
        K2-FunctionCallExpr-9
        parse-xml-001
        parse-xml-008
        parse-xml-009
        parse-xml-010
        parse-xml-fragment-001
        fn-parse-json-101
        fn-parse-json-102
        fn-parse-json-103
        fn-parse-json-104
        fn-parse-json-105
        fn-function-arity-017
        fn-function-name-018
        
        
    </xsl:variable>
    <xsl:variable name="excluded-tests" select="tokenize($exclusions, '\s+')"/>
 

</xsl:stylesheet>
