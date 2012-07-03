<!--                                                                         -->
<!-- Stylesheet used to convert the FOTS tests  into equivalent XSLT tests   -->
<!--                                                                         -->
<!-- Input document: fots catalog.xml                                        -->
<!--                                                                         -->
<!-- This stylesheet creates a xslt directory in the location given by the 
     variables $main-dir and xslt-dir (see below). The xslt  directory 
     contains a catalog.xml file in the format of the XSTS test suite,
     ExpectedTestResults and TestInputs directories. The TestInputs directory
     contains sub-directories of all the test-set, which in turn contains the 
     test-cases  as individual stylesheet files. The conversion of the FOTS 
     tests were essentially done by storing the XPath tests as a variable which 
     is then called subsequently in a choose instruction. This logic in 
     wrapped in a try-catch instruction to attempt to handle the test-cases 
     were we expect errors                                                   -->
<!--                                                                         -->
<!-- Author: O'Neil Delpratt, Saxonica                                       -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2012-07-03    Initial release                                         -->



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:x="http://www.w3.org/2001/XMLSchema"
    xmlns:fots="http://www.w3.org/2010/09/qt-fots-catalog" exclude-result-prefixes="fots xsl x"
    version="3.0">

    <xsl:output indent="yes"/>

    <xsl:variable name="main-dir" select="'../'"/>
    <xsl:param name="xslt-dir" select="concat($main-dir,'xslt/')"/>

    <xsl:namespace-alias stylesheet-prefix="x" result-prefix="xsl"/>

    <xsl:variable name="globalEnvironments" select="fots:catalog/fots:environment"/>

    <xsl:template match="fots:catalog">

        <!-- Create the expectedResults file                                             -->
        <xsl:result-document href="{concat($xslt-dir,'ExpectedTestResults/expectedResult.out')}">
            <xsl:element name="ok"/>
        </xsl:result-document>
        
        <!-- Create catalog file                                   -->
        <xsl:result-document href="{concat($xslt-dir,'catalog.xml')}">
            <testcases xmlns="http://www.w3.org/2005/05/xslt20-test-catalog" SourceOffsetPath="./"
                ResultOffsetPath="ExpectedTestResults/" InputOffsetPath="TestInputs/"
                testSuiteVersion="1.1.0">
                <xsl:apply-templates select="fots:test-set"/>
            </testcases>
        </xsl:result-document>

    </xsl:template>

    <xsl:template match="fots:test-set">
        <xsl:variable name="testSetFile" select="doc(concat($main-dir,@file))"/>
        <xsl:variable name="tests" select="$testSetFile/fots:test-set/fots:test-case"/>
        <xsl:variable name="testSetName" select="$testSetFile/fots:test-set/@name"/>

        <xsl:apply-templates select="$testSetFile//fots:test-case">
            <xsl:with-param name="testSetDependency"
                select="$testSetFile/fots:test-set/fots:dependency[@type='spec']"/>
            <xsl:with-param name="testSetName" select="$testSetName"/>
            <xsl:with-param name="testGroupName" select="substring-before(@file, '/')"/>
            <xsl:with-param name="tsEnvironments"
                select="$testSetFile/fots:test-set/fots:environment"/>
            <xsl:with-param name="file" select="$testSetFile"/>
        </xsl:apply-templates>
    </xsl:template>


    <xsl:template match="fots:test-case">
        <xsl:param name="testSetName">default</xsl:param>
        <xsl:param name="testSetDependency"/>
        <xsl:param name="testGroupName"/>
        <xsl:param name="tsEnvironments"/>
        <xsl:param name="file"/>
        <xsl:variable name="baseUri" select="base-uri(.)"/>

        <xsl:variable name="test" select="fots:test"/>

        <xsl:variable name="testCaseDependency" select="fots:dependency[@type='spec']"/>

        <xsl:variable name="dependency" select="$testCaseDependency, $testSetDependency"/>

        <xsl:variable name="name" select="@name"/>
        <xsl:variable name="checkForXT"
            select="$dependency[matches(@value, 'XT|XP')] or not($dependency)"/>

        <xsl:if test="$checkForXT">

            <testcase xmlns="http://www.w3.org/2005/05/xslt20-test-catalog">
                <name>
                    <xsl:value-of select="$name"/>
                </name>
                <creator>
                    <xsl:value-of select="created/@by"/>
                </creator>
                <category>
                    <xsl:value-of select="$testSetName"/>
                </category>
                <description>
                    <xsl:value-of select="description"/>
                </description>                
                <discretionary-items>
                    <discretionary-version spec="XSLT30"/>
                    <discretionary-feature name="namespace_axis" behavior="on"/>
                </discretionary-items>
                <input>
                    <stylesheet file="{$testGroupName}/{$testSetName}/{$name}.xsl" role="principal"/>
                    <entry-named-template qname="main"/>
                </input>
                <output same-as-1.0="false">
                    <result-document file="expectedResult.out" role="principal" type="xml"/>
                    <!-- allow for static errors -->
                    <xsl:for-each select="fots:result//fots:error">
                        <error error-id="{@code}"/>
                    </xsl:for-each>
                </output>
            </testcase>

            <xsl:variable name="version"
                select="if($dependency and $dependency[matches(@value, 'XT20|XP20')]) then xs:string('2.0') else xs:string('3.0')"/>
            
            <!-- Create a xslt file which contains a speicific test-case                        -->
            <xsl:result-document
                href="{concat($xslt-dir,'TestInputs/',$testGroupName,'/',$testSetName,'/',$name,'.xsl')}"
                omit-xml-declaration="yes" indent="yes">

                <x:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                    xmlns:fn="http://www.w3.org/2005/xpath-functions"
                    xmlns:xs="http://www.w3.org/2001/XMLSchema"
                    xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="fn err xs"
                    version="{$version}">
                    <!-- TODO: can't see why the xsl:namespace instruction is necessary, but it does the job -->
                    <xsl:namespace name="xs">http://www.w3.org/2001/XMLSchema</xsl:namespace>
                    <xsl:text>&#10;</xsl:text>
                    <xsl:comment><xsl:value-of select="$name"/>:<xsl:value-of select="fots:description"/></xsl:comment>
                    <xsl:text>&#10;</xsl:text>
                    <x:template name="main">
                        
                        <xsl:variable name="env" as="element(fots:environment)?"
                            select = "( fots:environment[not(@ref)],
                                        $tsEnvironments[@name = current()/fots:environment/@ref],
                                        $globalEnvironments[@name = current()/fots:environment/@ref] )[1]"/>
                            
                        <xsl:apply-templates select="$env">
                            <xsl:with-param name="baseUri" select="$baseUri"/>
                        </xsl:apply-templates>    

                        <x:try>
                            <xsl:choose>
                                <xsl:when test="$env/fots:source[@role='.']">
                                    <x:for-each select="$contextVar">
                                        <x:variable name="result" select="{$test}"/>
                                        <xsl:apply-templates select="fots:result"/>
                                    </x:for-each>
                                </xsl:when>
                                <xsl:otherwise>
                                    <x:variable name="result" select="{$test}"/>
                                    <xsl:apply-templates select="fots:result"/>
                                </xsl:otherwise>
                            </xsl:choose>


                            <x:catch>
                                <xsl:choose>
                                    <xsl:when test="empty(fots:result//fots:error)">
                                        <fail>
                                            <xsl:attribute name="code">{$err:code}</xsl:attribute>
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
                                                <fail reason="expected error {string-join(fots:result//fots:error/@code, ' or ')}, got {{$err:code}}"/>
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
    <!-- Generate:                                                            -->
    <!--       text to handle the various types of assertions                 -->
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <xsl:template match="fots:assert-true">
        <x:choose>
            <x:when test="count($result)=1 and $result=true()">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail/>
            </x:otherwise>
        </x:choose>
    </xsl:template>

    <xsl:template match="fots:assert-false">
        <x:choose>
            <x:when test="count($result)=1 and $result=false()">
                <ok/>
            </x:when>
            <x:otherwise>
                <fail/>
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

    <xsl:template match="assert-deep-eq">
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
            <x:when test="count($result) eq count($expected) and every $r in $result satisfies $r = $expected">
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
            <xsl:value-of select="$assertion" disable-output-escaping="yes"/>
        </x:variable>
        <x:variable name="actual">
            <x:copy-of select="$result" />
        </x:variable>
        <x:choose>
            <x:when test="deep-equal($expected, $actual)">
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
        <fail reason="no error">
            <x:copy-of select="$result"/>
        </fail>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <!--                                                                      -->
    <!-- Generate:                                                            -->
    <!--       handle source documents as a variable                          -->
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

    <xsl:template match="fots:source[@role='.']">
        <xsl:param name="baseUri"/>
        <xsl:variable name="file" select="@file"/>
        <xsl:variable name="uri" select="resolve-uri(@file, $baseUri)"/>

        <x:variable name="contextVar" select="doc('{$uri}')"/>
    </xsl:template>

    <xsl:template match="fots:source">
        <xsl:param name="baseUri"/>
        <xsl:variable name="file" select="@file"/>
        <xsl:variable name="role" select="substring(@role,2)"/>
        <xsl:variable name="uri" select="resolve-uri(@file, $baseUri)"/>

        <x:variable name="{$role}" select="doc('{$uri}')"/>
    </xsl:template>

</xsl:stylesheet>
