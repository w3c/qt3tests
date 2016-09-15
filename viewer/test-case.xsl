<xsl:transform xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT"
    xmlns:prop="http://saxonica.com/ns/html-property"
    xmlns:style="http://saxonica.com/ns/html-style-property"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0"
    xmlns:t="http://www.w3.org/2010/09/qt-fots-catalog" exclude-result-prefixes="t xs"
    expand-text="yes" extension-element-prefixes="ixsl prop style">

    <xsl:variable name="file"
        select="ixsl:location() => substring-after('?src=') => substring-before(';')"/>
    <xsl:variable name="test-case" select="ixsl:location() => substring-after(';case=')"/>

    <xsl:template name="main">
        <xsl:result-document href="#title" method="ixsl:replace-content"> File {$file} </xsl:result-document>
        <xsl:apply-templates select="doc('../' || $file)/*/t:test-case[@name=$test-case]"/>
    </xsl:template>

    <xsl:template match="t:test-case">
        <xsl:result-document href="#title" method="ixsl:replace-content"> Test case
                <emph>{$test-case}</emph> in test set <emph>{/t:test-set/@name}</emph>
        </xsl:result-document>
        <xsl:result-document href="#target" method="ixsl:replace-content">
            <h2>History</h2>
            <table cellpadding="10px">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Person</th>
                        <th>Change</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates select="t:created, t:modified"/>
                </tbody>
            </table>
            <div>
                <h2>Environment</h2>
                <xsl:apply-templates
                    select="t:environment[not(@ref)], /*/t:environment[@name=current()/t:environment/@ref]"
                />
            </div>
            <div>
                <h2>Dependencies</h2>
                <xsl:apply-templates select="t:dependency, ../t:dependency[not(@type) = current()/t:dependency/@type]"/>
            </div>
            <div>
                <h2>Test</h2>
                <p><code><xsl:apply-templates select="t:test"/></code></p>
            </div>
            <div>
                <h2>Expected Results</h2>
                <xsl:apply-templates select="t:result/*"/>
            </div>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="t:dependency">
        <dt>{@type}</dt>
        <dd>{@value}</dd>
    </xsl:template>
    
    <xsl:template match="t:environment">
        <xsl:apply-templates select="*"/>
    </xsl:template>
    
    <xsl:template match="t:environment/*">
        <dt>{name()}</dt>
        <dd>{@file, @uri}</dd>
    </xsl:template>

    <xsl:template match="t:test">
        <xsl:analyze-string select="." regex="\n">
            <xsl:matching-substring>
                <br/>
            </xsl:matching-substring>
            <xsl:non-matching-substring>{.}</xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>

    <xsl:template match="t:all-of">
        <p>All of:</p>
        <ul>
            <xsl:for-each select="*">
                <li>
                    <xsl:apply-templates/>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <xsl:template match="t:any-of">
        <p>Any of:</p>
        <ul>
            <xsl:for-each select="*">
                <li>
                    <xsl:apply-templates/>
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <xsl:template match="t:result//*">
        <dt>{name()}</dt>
        <dd>{.}</dd>
    </xsl:template>
    
    <xsl:template match="t:error">
        <dt>error {@code}</dt>
    </xsl:template>

    <xsl:template match="t:created | t:modified">
        <tr>
            <td>{format-date(xs:date(@on), "[D] [MNn,3-3] [Y]")}</td>
            <td>{@by}</td>
            <td>{(@change, 'new test')[1]}</td>
        </tr>
    </xsl:template>

</xsl:transform>
