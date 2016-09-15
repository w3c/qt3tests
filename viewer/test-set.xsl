<xsl:transform xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT"
    xmlns:prop="http://saxonica.com/ns/html-property"
    xmlns:style="http://saxonica.com/ns/html-style-property"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0" 
    xmlns:t="http://www.w3.org/2010/09/qt-fots-catalog"
    exclude-result-prefixes="t xs" expand-text="yes" extension-element-prefixes="ixsl prop style">

    <!--<xsl:variable name="doc" as="document-node()" select="doc('http://localhost:8080/qt3/QT3-test-suite/' || ixsl:query-params()?src)"/>
-->
    <xsl:variable name="file" select="substring-after(ixsl:location(), '?src=')"/>
    <xsl:variable name="base" select="substring-before(ixsl:location(), '?')"/>
    
    <xsl:template name="main">       
        <xsl:result-document href="#title" method="ixsl:replace-content">
            File {$file}
        </xsl:result-document>
        <xsl:apply-templates select="doc(replace($base, 'viewer/test-set.html', $file))"/>
    </xsl:template>
    
    <xsl:template match="/">
        <xsl:result-document href="#title" method="ixsl:replace-content">
            QT3 Test Suite: Test Set {t:test-set/@name}
        </xsl:result-document>
        <xsl:result-document href="#target" method="ixsl:replace-content">
            <table cellpadding="10px">
                <thead>
                    <tr>
                        <th align="left">Name</th>
                        <th align="left">Test</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="//*:test-case">
                        <xsl:sort select="@name"/>
                        <tr>
                            <td valign="top"><a href="test-case.html?src={$file};case={@name}"><span style="white-space: nowrap">{@name}</span></a></td>
                            <td valign="top"><code><xsl:apply-templates select="t:test"/></code></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="t:test">
      <xsl:analyze-string select="." regex="\n">
        <xsl:matching-substring><br/></xsl:matching-substring>
        <xsl:non-matching-substring>{.}</xsl:non-matching-substring>
      </xsl:analyze-string>
    </xsl:template>
 

</xsl:transform>
