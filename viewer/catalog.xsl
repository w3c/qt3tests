<xsl:transform xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0"
    expand-text="yes"
    exclude-result-prefixes="xs" 
    extension-element-prefixes="ixsl">


    <xsl:template match="/">
        <xsl:message>Processing "/"</xsl:message>
        <xsl:result-document href="#target" method="ixsl:replace-content">
            <p>Test sets</p>
            <ul>
                <xsl:for-each select="//*:test-set">
                    <li><a href="test-set.html?src={@file}">{@name}</a></li>
                </xsl:for-each>
            </ul>
        </xsl:result-document>
    </xsl:template>



</xsl:transform>
