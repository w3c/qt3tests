
<!--                                                                         -->
<!-- Tool to convert QT3 tests into equivelent XQueryX tests                 -->
<!--                                                                         -->
<!-- Author: O'Neil Delpratt                                                -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2013-10-10    Initial release (O'Neil)                                -->
<!--                                                                         -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="http://www.w3.org/2010/09/qt-fots-catalog"
    xmlns:xq="java:org.w3c.xqparser.ConvertToXQueryX" exclude-result-prefixes="xs" version="2.0">

    <xsl:variable name="catalog" select="."/>
    <xsl:variable name="xqueryDir" select="'../xqueryx'"/>
    <xsl:variable name="testSets" select="$catalog//doc(resolve-uri(@file,base-uri(..)))/t:test-set"/>
    <!--<xsl:variable name="debug" select="true()"/>-->

    <xsl:template match="/">
        <xsl:for-each select="$testSets">


            <xsl:variable name="testSetName" select="@name"/>
            <xsl:variable name="testSetDir" select=" substring-before($testSetName, '-')"/>


            <xsl:for-each
                select="./t:test-case[not(t:result//t:error[starts-with(@code,'XQST') or starts-with(@code, 'XPST')])]">
                <xsl:variable name="dirname" select="concat($xqueryDir,'/', $testSetDir,'/',$testSetName,'/')"/>
                <xsl:variable name="xqueryx" select="xq:processXQueryX(./t:test, ./@name, $dirname)" as="xs:boolean"/>
                
                 <xsl:if test="not($xqueryx)">
                        <xsl:message>
                            <xsl:value-of select="concat('Test case', ./@name,' failed conversion. &#xD;&#xA;')"/>
                        </xsl:message>
                     <!--<xsl:message>Result: <xsl:value-of select="$xqueryx"/></xsl:message>-->
                    </xsl:if>
            </xsl:for-each>


        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
