<?xml version="1.0"?> 

<!--                                                                         -->
<!-- Generate a report for one or more QT3 result reports                   -->
<!--                                                                         -->
<!-- Author: O'Neil Delpratt                                                -->
<!-- Based upon the XQTS results stylesheet written by  Andrew Eisenberg     -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2012-08-08    Initial release (OND)                                   -->
<!--   2013-01-13    Revision (MHK)                                          -->
<!--                                                                         -->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
   xmlns:fots="http://www.w3.org/2010/09/qt-fots-catalog"
   xmlns:fotsr="http://www.w3.org/2012/08/qt-fots-results"
   xmlns:xs="http://www.w3.org/2001/XMLSchema">

   <xsl:output method="html" indent="yes"/>

   <xsl:strip-space elements="*"/>


   <!--                                                                      -->
   <!-- Parameters                                                           -->
   <!--                                                                      -->

   <!-- Place document author at end of report -->
   <xsl:param name="documentAuthor" select="'Michael Kay'"/>

   <!-- Place creation date at end of report -->
   <xsl:param name="creationDate" select="format-date(current-date(), '[D1] [MNn] [Y0001]')"/>

   <!-- Document that contains URLs of result reports -->
   <!-- <results><result>url</result>...</results> -->
   <xsl:param name="resultsDocs" select="collection('../../result-submissions/?select=results*.xml')"/>
   

   <!-- Generate Summarized Results section -->
   <xsl:param name="summary" select="true()" as="xs:boolean"/>

   <!-- Generate Implementation-defined items, Static Context Properties,   -->
   <!-- and Dynamic Context Properties                                      -->
   <xsl:param name="impdef" select="true()" as="xs:boolean"/>

   <!-- Generate Detailed Results section -->
   <xsl:param name="details" select="true()" as="xs:boolean"/>

   <!-- Generate failures only -->
   <xsl:param name="failures" select="false()" as="xs:boolean"/>

   <!-- Generate Test Run section -->
   <xsl:param name="test-run-details" select="true()" as="xs:boolean"/>

   <!-- Add to the report title -->
   <xsl:param name="title-annotation" select="''"/>



   <!-- Some global variables -->


   <xsl:variable name="includeSummaryColumn" as="xs:boolean" select="count($resultsDocs) gt 1"/>
 
   <xsl:variable name="FOTSversion" select="fots:catalog/@version"/>


   <!--   <xsl:variable name="TargetLanguage" select="fots:test-suite/@targetLanguage" />
   <xsl:variable name="XQueryQueryOffsetPath" select="fots:test-suite/@XQueryQueryOffsetPath" />
   <xsl:variable name="XQueryXQueryOffsetPath" select="fots:test-suite/@XQueryXQueryOffsetPath" />
   <xsl:variable name="ResultOffsetPath" select="fots:test-suite/@ResultOffsetPath" />
   <xsl:variable name="XQueryFileExtension" select="fots:test-suite/@XQueryFileExtension" />
   <xsl:variable name="XQueryXFileExtension" select="fots:test-suite/@XQueryXFileExtension" />
   <xsl:variable name="SourceOffsetPath" select="fots:test-suite/@SourceOffsetPath" />-->

   <!--<xsl:variable name="xquery" select="count($results//fotsr:syntax[text()='XQuery'])"/>
   <xsl:variable name="xqueryx" select="count($results//fotsr:syntax[text()='XQueryX'])"/>-->

   <!-- colors -->

   <xsl:variable name="perfectcolor" select="'mediumseagreen'"/>
   <xsl:variable name="passcolor" select="'palegreen'"/>
   <xsl:variable name="failcolor" select="'coral'"/>
   <xsl:variable name="untestedcolor" select="'white'"/>
   <xsl:variable name="backgroundcolor" select="'lightcyan'"/>
   <xsl:variable name="groupcolor" select="'paleturquoise'"/>
   
   <xsl:function name="fotsr:status-color" as="xs:string">
      <xsl:param name="status" as="xs:string?"/>
      <xsl:choose>
         <xsl:when test="empty($status)">salmon</xsl:when>
         <xsl:when test="$status = 'pass'">palegreen</xsl:when>
         <xsl:when test="$status = 'wrongError'">lightgreen</xsl:when>
         <xsl:when test="$status = 'fail'">tomato</xsl:when>
         <xsl:when test="$status = ('n/a', 'tooBig', 'disputed')">white</xsl:when>
         <xsl:when test="$status = 'notRun'">salmon</xsl:when>
         <xsl:otherwise>yellow</xsl:otherwise>
      </xsl:choose>
   </xsl:function>

   <xsl:key name="byname" match="fotsr:test-case" use="@name"/>
   <xsl:key name="testSetByName" match="fotsr:test-set" use="@name"/>

   <xsl:key name="byscenario" match="fots:test-case" use="@scenario"/>



   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- /                                                                    -->
   <!--                                                                      -->
   <!-- Generate:                                                            -->
   <!--    1) TOC, if necessary                                              -->
   <!--    2) Each of the sections                                           -->
   <!--    3) Footer, with author and creation date                          -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="/">
      <xsl:call-template name="main">
         <xsl:with-param name="filter" tunnel="yes" select="$filterElements[self::true]"/>
         <xsl:with-param name="criteron" tunnel="yes" select="''"/>
      </xsl:call-template>     
   </xsl:template>

   <xsl:template name="main">

      <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
            <title>
               <xsl:text>QT3 Test Suite Result Summary</xsl:text>
               <xsl:if test="$title-annotation != ''">
                  <xsl:text> - </xsl:text>
                  <xsl:value-of select="$title-annotation"/>
               </xsl:if>
            </title>
         </head>


         <body>
            <a name="top"></a>
            <center>
               <h1>
                  <xsl:text>QT3 Test Suite Result Summary</xsl:text>
                  <xsl:if test="$title-annotation != ''">
                     <xsl:text> - </xsl:text>
                     <xsl:value-of select="$title-annotation"/>
                  </xsl:if>
               </h1>
            </center>

            <!-- Generate summary -->

            <p/>
            <blockquote>
               <p> This document contains the results of running the <a
                     href="http://dev.w3.org/2011/QT3-test-suite/">QT3 Test
                     Suite</a> on <xsl:number value="count($resultsDocs)" format="w"/> implementations of XQuery and XPath. </p>

               <p>
                  <xsl:text>The latest version of this test suite is QT3 </xsl:text>
                  <xsl:value-of select="$FOTSversion"/>
                  <xsl:text>. Implementations that have used older versions of the test suite are noted.</xsl:text>
               </p>

               <p> When results are listed as number/number/number, then indicate pass/failed/total.
                  Passed and failed together may not equal total, due to tests
                  not run or not reported. </p>

               <p>The latest version of our files is available at <a
                     href="http://dev.w3.org/cvsweb/2011/QT3-test-suite/"
                     >http://dev.w3.org/cvsweb/2011/QT3-test-suite/</a>. <xsl:if test="$details">
                     The "catalog" and "query" links found with each test case are links to this
                     version. </xsl:if>
               </p>

               <!--    <xsl:apply-templates>
                  <xsl:with-param name='summary' select="'yes'"/>
               </xsl:apply-templates>-->
            </blockquote>
            <p/>



            <!-- Generate TOC if the report contains multiple sections -->

            <xsl:variable name="impdefp">
               <xsl:choose>
                  <xsl:when test="$impdef">1</xsl:when>
                  <xsl:otherwise>0</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>

            <xsl:variable name="testrunp">
               <xsl:choose>
                  <xsl:when test="$test-run-details">1</xsl:when>
                  <xsl:otherwise>0</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>

            <xsl:variable name="summaryp">
               <xsl:choose>
                  <xsl:when test="$summary">1</xsl:when>
                  <xsl:otherwise>0</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>

            <xsl:variable name="detailsp">
               <xsl:choose>
                  <xsl:when test="$details ">1</xsl:when>
                  <xsl:otherwise>0</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>

            <xsl:if test="($detailsp + $impdefp + $summaryp) > 1">

               <hr/>

            </xsl:if>


            <!-- Generate a list of implementations in this report -->

            

            <xsl:for-each select="$resultsDocs">
               <xsl:variable name="resultsFilename"
                  select="concat('results_', fotsr:test-suite-result/fotsr:product/concat(@name, '_', @version), '.html')"/>
               <xsl:result-document href="{$resultsFilename}">
                  <html>
                     <head>
                        <title>Test submission for <xsl:value-of select="fotsr:test-suite-result/fotsr:product/concat(@name, ' ', @version)"/></title>
                     </head>
                     <body>
                        <button type="button" onclick="window.location='report.html'">Main Report</button>
                        <h1>Test submission for <xsl:value-of select="fotsr:test-suite-result/fotsr:product/concat(@name, ' ', @version)"/></h1>
                        <hr/>
                        <!-- <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:syntax"/>-->
                        <!-- <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:implementation/@name"/>-->
                        <xsl:variable name="product"
                           select="./fotsr:test-suite-result/fotsr:product"/>
                        <xsl:variable name="test-run"
                           select="./fotsr:test-suite-result/fotsr:submission/fotsr:test-run"/>

                        <!-- Skip implementations that wish to be anonymous -->

                        <xsl:if test="not(xs:boolean(fotsr:test-suite-result/fotsr:submission/@anonymous))">
                           <h3>
                              <xsl:value-of select="$product/@name"/> version <xsl:value-of select="$product/@version"/>
                           </h3>
                           <blockquote>
                              <xsl:apply-templates select="$product"/>
                           </blockquote>
                        </xsl:if>
                     </body>
                  </html>
               </xsl:result-document>
            </xsl:for-each>

            <!-- Generate the summarized results -->

            <xsl:if test="$summary">
               <h2><a name="summary"/>Summarized Results:</h2>
               <blockquote>
                  <xsl:apply-templates>
                     <xsl:with-param name="detail" select="false()"/>
                  </xsl:apply-templates>
               </blockquote>
            </xsl:if>


            <!-- Generate the detailed results -->

            <xsl:if test="$details">
               <xsl:apply-templates>
                  <xsl:with-param name="detail" select="true()"/>
               </xsl:apply-templates>
            </xsl:if>
            
            <!-- Generate analysis by feature name -->
            
            <blockquote>
               <h2>Results for optional features</h2>
               <blockquote>
                  <xsl:call-template name="dependencyList" />
               </blockquote>
               
               
               <!-- Generate analysis by new facility name -->
               
               <h2>Results for new 3.0 facilities</h2>
               <blockquote>
                  <xsl:call-template name="changeList" />
               </blockquote>
            </blockquote>

            <!-- Generate the document footer with author and creation date -->

            <xsl:if test="$documentAuthor != '' or $creationDate != ''">
               <hr/>
               <p align="left">
                  <small>
                     <xsl:if test="$documentAuthor != ''">
                        <xsl:text>Generated by </xsl:text>
                        <xsl:value-of select="$documentAuthor"/>
                     </xsl:if>
                     <xsl:if test="$creationDate != ''">
                        <xsl:text> on </xsl:text>
                        <xsl:value-of select="$creationDate"/>
                     </xsl:if>
                  </small>
               </p>
            </xsl:if>
         </body>

      </html>
      
      
      

   </xsl:template>

   <xsl:template name="legend">
      <table border="0" width="100%">
         <tr>
            <td>
               <table align="right">
                  <tr>
                     <td>Legend:&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$perfectcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>passed</td>
                     <td>&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$passcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>almost passed<br/>(&#x2265; 98%)</td>
                     <td>&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$failcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>failed</td>
                     <td>&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$untestedcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>untested</td>
                  </tr>
               </table>
            </td>
         </tr>
      </table>
   </xsl:template>

   <xsl:template name="headings">
      <xsl:param name="testType">Test-sets</xsl:param>
      <xsl:param name="resultsDocsGrouped" select="$resultsDocs" />
      <thead>
         <!-- Generate column heads for XQuery and XQueryX groups -->

         <tr>
            <td/>
            <td colspan="{count($resultsDocsGrouped)}" style="text-align:center">
               <b>Implementations</b>
            </td>
         </tr>
         <tr>

            <th>
               <xsl:value-of select="$testType"/>
            </th>
            <xsl:if test="$testType='Test-sets'">
               Key: Test-sets(# of test-cases refering to changelist entry) 
            </xsl:if>
            <!-- Generate a column head for each result report -->

            <xsl:for-each select="$resultsDocsGrouped">
               <xsl:sort select="./fotsr:test-suite-result/fotsr:implementation/@name"/>
               <xsl:variable name="resultsFilename">
                  <xsl:choose>
                     <xsl:when test="$testType='Test-sets'">
                        <xsl:value-of
                           select="concat('results_',./fotsr:test-suite-result/fotsr:product/concat(@name, '_', @version), '.html')"/>      
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:value-of
                           select="concat('../results_',./fotsr:test-suite-result/fotsr:product/concat(@name, '_', @version), '.html')"/>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <th valign="top">
                  <xsl:choose>
                     <xsl:when
                        test="./fotsr:test-suite-result/fotsr:submission/@anonymous = 'true'">
                        <xsl:text>Anonymous</xsl:text>
                     </xsl:when>
                     <xsl:otherwise>
                        <a href="{$resultsFilename}">
                           <xsl:value-of
                              select="./fotsr:test-suite-result/fotsr:product/concat(@name, '_', @version)"/>
                        </a>
                     </xsl:otherwise>
                  </xsl:choose>
                  <xsl:if
                     test="./fotsr:test-suite-result/fotsr:product/@version != $FOTSversion">
                     <br/>
                     <font size="-1">
                        <xsl:choose>
                           <xsl:when
                              test="./fotsr:test-suite-result/fotsr:product/@version = ''">
                              <xsl:text>(unspecified)</xsl:text>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:text>(FOTS </xsl:text>
                              <xsl:value-of
                                 select="./fotsr:test-suite-result/fots:product/@version"/>
                              <xsl:text>)</xsl:text>
                           </xsl:otherwise>
                        </xsl:choose>
                     </font>
                  </xsl:if>
               </th>
            </xsl:for-each>


         </tr>

      </thead>

   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fots:test-suite                                                      -->
   <!--                                                                      -->
   <!-- Generate a table with columns:                                       -->
   <!--    1) Feature - the feature name                                     -->
   <!--    2) a column for each result report, indicating success or failure -->
   <!--    3) a summary for all reports, if more than one                    -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fots:catalog">

      <xsl:param name="detail"/>
      <xsl:param name="summary" select="'no'"/>

      <!-- Generate the legend -->
      <xsl:if test="not($detail)">
         <xsl:call-template name="legend"/>
      </xsl:if>

      <xsl:choose>
         <xsl:when test="$summary='yes'">
            <blockquote>
               <table frame="hsides" rules="groups" border="1" bordercolor="black"
                  bgcolor="{$backgroundcolor}" cellpadding="2">
                  <tbody>
                     <colgroup align="left"/>
                     <xsl:if test="$includeSummaryColumn">
                        <colgroup align="left"/>
                     </xsl:if>

                     <xsl:if test="not($detail)">
                        <xsl:call-template name="headings"/>
                     </xsl:if>
                     <xsl:apply-templates select="fots:test-set">
                        <xsl:with-param name="levels" select="1"/>
                        <xsl:with-param name="grandSummary" select="'true'"/>
                     </xsl:apply-templates>

                  </tbody>
               </table>
            </blockquote>
         </xsl:when>
         <xsl:when test="$detail">

            <xsl:for-each select="fots:test-set">
               <xsl:result-document href="testSets/{@name}.html">
                  <html>
                     <head>
                        <!--document.getElementById('{<xsl:value-of select="" />}').style.display='none';
document.getElementById('main2').style.display='none';
document.getElementById('main3').style.display='none';
document.getElementById('main4').style.display='none';
document.getElementById('main5').style.display='none';
document.getElementById('main6').style.display='none';
document.getElementById('main7').style.display='none';
document.getElementById('main8').style.display='none';
document.getElementById('main9').style.display='none';-->
                        <script language="JavaScript" type="text/javascript">

function doMenu(item) {
obj=document.getElementById(item);
col=document.getElementById("x" + item);
if (obj.style.display=="none") { obj.style.display="block"; col.innerHTML="[-]"; }
else { obj.style.display="none"; col.innerHTML="[+]"; } }
</script>



                        <script language="JavaScript" type="text/javascript">
                                                    (document.getElementById) ? domNode = true: domNode = false;
                                                    var current = null;
                                                    
                                                    function makeVisible(item) {
                                                         if(current != null) {
                                                            makeInvisible(current);
                                                        }
                                                        if (domNode) {
                                                            document.getElementById(item).style.visibility = 'visible';
                                                            current = item;
                                                            
                                                        }
                                                    }
                                                    
                                                    function makeInvisible(item) {
                                                        if (domNode) {
                                                            document.getElementById(item).style.visibility = 'hidden';
                                                            current = item;
                                                        }
                                                    }
                                 </script>

                     </head>
                     <body>
                        <button type="button" onclick="window.location='../report.html'"
                           >Back to Main Report</button>
                        <xsl:call-template name="legend"/>
                        <table frame="hsides" rules="groups" border="1" bordercolor="black"
                           bgcolor="{$backgroundcolor}" cellpadding="2">

                           <xsl:call-template name="headings">
                              <xsl:with-param name="testType">Test-cases</xsl:with-param>
                           </xsl:call-template>

                           <xsl:apply-templates select=".">
                              <xsl:with-param name="detail" select="$detail"/>
                              <xsl:with-param name="resultsDocsGrouped" select="$resultsDocs" />
                           </xsl:apply-templates>
                        </table>
                     </body>
                  </html>
               </xsl:result-document>

            </xsl:for-each>

         </xsl:when>
         <xsl:otherwise>
            
            <xsl:variable name="test-sets" select="fots:test-set" />
            
            <h2>Results by Specification</h2>
            <xsl:for-each-group select="$resultsDocs" group-by="fotsr:test-suite-result/fotsr:product/@language">
               <xsl:sort select="current-grouping-key()"/>
            
               <xsl:variable name="specName">
                  <xsl:choose>
                     <xsl:when test="current-grouping-key() = 'XP20'">XPath 2.0</xsl:when>
                     <xsl:when test="current-grouping-key() = 'XP30'">XPath 3.0</xsl:when>
                     <xsl:when test="current-grouping-key() = 'XQ10'">XQuery 1.0</xsl:when>
                     <xsl:when test="current-grouping-key() = 'XQ30'">XQuery 3.0</xsl:when>
                  </xsl:choose>
               </xsl:variable>
               
               <blockquote>
                  <p><a href="{current-grouping-key()}.html"><xsl:value-of select="$specName"/></a></p>
               </blockquote>
               
               <xsl:result-document href="{current-grouping-key()}.html">
               
                  <html>
                     <head>
                        <title>Summary of results for <xsl:value-of select="$specName"/></title>
                     </head>
                     <body>
                        <button type="button" onclick="window.location='report.html'">Main Report</button>
               
                        <h1>Summary of results for <xsl:value-of select="$specName"/></h1>
               
                        <xsl:call-template name="legend"/>
                        
                        <table frame="hsides" rules="groups" border="1" bordercolor="black"
                           bgcolor="{$backgroundcolor}" cellpadding="2">
                           <tbody>
                              <colgroup align="left"/>
                              <!--  <colgroup align="center" span="{$xquery}"/>
                                 <colgroup align="center"  span="{$xqueryx}"/>-->
                              <xsl:if test="$includeSummaryColumn">
                                 <colgroup align="left"/>
                                 <xsl:if test="not($detail)">
                                    <xsl:call-template name="headings">
                                       <xsl:with-param name="resultsDocsGrouped" select="current-group()" />  
                                    </xsl:call-template>
                                 </xsl:if>
                                 
                                 <xsl:apply-templates select="$test-sets">
                                    <xsl:with-param name="detail" select="$detail"/>
                                    <xsl:with-param name="resultsDocsGrouped" select="current-group()" />
                                    <xsl:with-param name="filter" tunnel="yes" select="$filterElements[self::specification]"/>
                                    <xsl:with-param name="criterion" tunnel="yes" select="current-grouping-key()"/>
                                 </xsl:apply-templates>
                              </xsl:if>
                           </tbody>
                        </table>
                     </body>
                  </html>   
               </xsl:result-document>
            </xsl:for-each-group> 
            
         </xsl:otherwise>
         
      </xsl:choose>



   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fots:test-set                                                      -->
   <!--                                                                      -->
   <!-- Generate the test set hierarchy in the left-most column            -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fots:test-set">
      <xsl:param name="detail" as="xs:boolean"/>
      <xsl:param name="resultsDocsGrouped"/>
      <xsl:param name="levels" select="100"/>
      <xsl:param name="grandSummary" select="'false'"/>
      <xsl:variable name="testSetFile" select="doc(concat('../',@file))"/>
      <xsl:variable name="immediate-tests" select="$testSetFile/fots:test-set/fots:test-case"/>
      <xsl:variable name="testSetName" select="@name"/>
      <xsl:variable name="tests" select="$testSetFile/fots:test-set/fots:test-case"/>
      <xsl:variable name="rawtotal" select="count($tests)"/>
      <xsl:variable name="title" select="@name"/>
      <xsl:variable name="parseErrors" select="key('byscenario', 'parse-error')"/>
      <xsl:variable name="totalNotPE" select="count($tests[.=$parseErrors])"/>

      <!-- span then entire table.                                           -->

      <xsl:choose>
         <xsl:when test="(count($immediate-tests) = 0 and $grandSummary='false')">
            <tr bgcolor="{$groupcolor}">
               <td>
                  <xsl:choose>
                     <xsl:when test="$detail">
                        <xsl:value-of select="@name"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <a href="testSets/{@name}.html">
                           <xsl:value-of select="@name"/>
                        </a>

                     </xsl:otherwise>
                  </xsl:choose>

               </td>

               <xsl:for-each select="$resultsDocsGrouped">
                  <td/>
               </xsl:for-each>

               <xsl:if test="$includeSummaryColumn">
                  <td/>
               </xsl:if>

            </tr>
         </xsl:when>

         <xsl:otherwise>
            <tr>
               <td valign="top">

                  <xsl:choose>
                     <xsl:when test="$detail">
                        <xsl:value-of select="@name"/>
                        <xsl:if test="$testSetFile/fots:test-set/@covers"><b>*</b></xsl:if>
                     </xsl:when>
                     <xsl:otherwise>
                        <a href="testSets/{@name}.html">
                           <xsl:value-of select="@name"/>
                        </a>
                        <xsl:if test="$testSetFile//@covers">
                           <b>(<xsl:value-of select="if($testSetFile/fots:test-set/@covers) then count(($testSetFile//fots:test-case)) else count(distinct-values($testSetFile//@covers))" />)</b>
                        </xsl:if>

                     </xsl:otherwise>
                  </xsl:choose>
               </td>

               <!-- summary for each group -->

               <xsl:for-each select="$resultsDocsGrouped">
                  <!--<xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:syntax"/>-->
                  <xsl:sort select="./fotsr:test-suite-result/fotsr:product/@name"/>
                  <xsl:sort select="./fotsr:test-suite-result/fotsr:product/@version"/>
                  <xsl:variable name="syntax" select="./fotsr:test-suite-result/fotsr:syntax"/>
                  <td align="center">

                     <xsl:variable name="results" select="key('testSetByName', $testSetName)"
                        as="element(fotsr:test-set)?"/>

                     <xsl:variable name="passed"
                        select="count($results/fotsr:test-case[@result=('pass', 'wrongError')])"/>
                     <xsl:variable name="failed"
                        select="count($results/fotsr:test-case[@result=('fail', 'notRun')])"/>
                     <xsl:variable name="total">
                        <xsl:value-of select="$rawtotal - count($results/fotsr:test-case[@result = ('n/a', 'tooBig', 'disputed')])"/>
                     </xsl:variable>

                     <xsl:attribute name="bgcolor">
                        <xsl:choose>
                           <xsl:when test="$passed=$total and $passed != 0">
                              <xsl:value-of select="$perfectcolor"/>
                           </xsl:when>
                           <xsl:when test="(100 * $passed) &gt; (98 * $total)">
                              <xsl:value-of select="$passcolor"/>
                           </xsl:when>
                           <xsl:when test="$passed = 0">
                              <xsl:value-of select="$untestedcolor"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="$failcolor"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:attribute>
                     <xsl:choose>
                        <xsl:when test="$grandSummary='true'">
                           <xsl:text>&#xA0;</xsl:text>
                           <xsl:value-of select="$passed"/>
                           <xsl:text>&#xA0;/&#xA0;</xsl:text>
                           <xsl:value-of select="$failed"/>
                           <xsl:text>&#xA0;/&#xA0;</xsl:text>
                           <xsl:value-of select="$total"/>
                           <xsl:text>&#xA0;</xsl:text>
                           <xsl:if test="$title='Minimal Conformance'">
                              <br/>
                              <xsl:value-of
                                 select="concat(round((1000*$passed) div $total) div 10, '%')"/>
                           </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="$passed"/>
                           <xsl:text>/</xsl:text>
                           <xsl:value-of select="$total"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </td>
               </xsl:for-each>

               <xsl:if test="$includeSummaryColumn">
                  <td align="center">
                     <xsl:variable name="totalresults" select="count($resultsDocsGrouped)"/>
                     <xsl:variable name="passresults">
                        <xsl:for-each select="$resultsDocsGrouped">
                           <xsl:variable name="results" select="key('testSetByName', $testSetName)"
                              as="element(fotsr:test-set)?"/>
                           <xsl:variable name="syntax"
                              select="./fotsr:test-suite-result/fotsr:syntax"/>
                           <xsl:variable name="total">
                              <xsl:choose>
                                 <xsl:when test="$syntax='XQueryX'">
                                    <xsl:value-of select="$rawtotal - $totalNotPE"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:value-of select="$rawtotal"/>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:variable>
                           <xsl:if
                              test="$total = count($results/fotsr:test-case[@result=('pass', 'wrongError')]) and $total != 0">
                              <xsl:value-of select="1"/>
                           </xsl:if>
                        </xsl:for-each>
                     </xsl:variable>

                     <xsl:variable name="passed" select="string-length($passresults)"/>
                     <xsl:attribute name="bgcolor">
                        <!--  <xsl:choose>
                           <xsl:when test='($totalresults="1" and $passed="1") or $passed >= 2'>
                              <xsl:value-of select="$perfectcolor"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="$failcolor"/>
                           </xsl:otherwise>
                        </xsl:choose>-->
                     </xsl:attribute>

                     <xsl:value-of select="$passed"/>
                     <xsl:text>/</xsl:text>
                     <xsl:value-of select="$totalresults"/>
                  </td>
               </xsl:if>

            </tr>

         </xsl:otherwise>
      </xsl:choose>

      <!-- Generate detail rows, if requested  -->

      <xsl:if test="$detail">
         <xsl:variable name="specChangeList"  select="$testSetFile//@covers" />
         <xsl:if test="$specChangeList">
            <b>Specification change list covered in the following test-set:</b><br/> 
         </xsl:if>
         <xsl:for-each-group select="$specChangeList" group-by=".">
            <a href="../changelists/{.}.html"><xsl:value-of select="." /></a> (No. of tests: <xsl:value-of select="if(. = $testSetFile/fots:test-set/@covers) then count($testSetFile//fots:test-case) else count(current-group())" />), See: <b><xsl:value-of select="string-join(for $a in (1 to position()) return '*', '')" /></b><br/>
         </xsl:for-each-group>
         <xsl:apply-templates select="$testSetFile//fots:test-case">
            <xsl:with-param name="detail" select="true()"/>
            <xsl:with-param name="specChangeList" select="$specChangeList" />
         </xsl:apply-templates>
         
      </xsl:if>

      <!-- Generate rows for the test groups that are contained -->
   </xsl:template>
   
   <xsl:template name="dependencyList">
      <xsl:variable name="catalog" select="doc('../catalog.xml')"/>
      <xsl:variable name="testcases" select="$catalog//fots:test-set/doc(resolve-uri(@file,base-uri(..)))/fots:test-set/fots:test-case" />
      <p>Test cases: <xsl:value-of select="count($testcases)"/></p>
      <xsl:for-each-group select="$testcases" group-by="(.|..)/(fots:dependency[@type='feature']/concat(@value, '[', (@satisfied, 'true')[1], ']'), fots:dependency[not(@type=('spec', 'feature'))]/concat(@type, '=', @value, '[', (@satisfied, 'true')[1], ']'))">
         <xsl:sort select="current-grouping-key()"/>
         <p><a href="dependency/{position()}.html"><xsl:value-of select="current-grouping-key(), concat('(', count(current-group()), ')')"/></a></p>
         
         <xsl:result-document href="dependency/{position()}.html">
            <html>
               <head>
                  <title>Test results for dependency: <xsl:value-of select="current-grouping-key()"/></title>
               </head>
               <body>
                  <p>
                     <button type="button" onclick="window.location='../report.html'">Main Report</button>
                     <xsl:text>&#xa0;&#xa0;</xsl:text>
                     <button type="button" onclick="window.location='javascript:javascript:history.go(-1)'">Back</button>
                  </p>   
                  <h1>Test results covering dependency: <xsl:value-of select="current-grouping-key()"/></h1>
                  
                  <p><b>Change id: <xsl:value-of select="." /></b></p>
                  
                  <table>
                     <tr>
                        <td/>
                        <xsl:for-each select="$resultsDocs">
                           <td><xsl:value-of select="fotsr:test-suite-result/fotsr:product/concat(@name, ' ', @version)"/></td>
                        </xsl:for-each>
                     </tr>
                     <xsl:variable name="dependencyKey" select="substring-before(current-grouping-key(), '[')"/>
                     <xsl:variable name="satisfied" select="substring-before(substring-after(current-grouping-key(), '['), ']')"/>
                     <xsl:choose>
                        <xsl:when test="contains($dependencyKey, '=')">
                           <xsl:apply-templates select="$testcases[(.|..)/fots:dependency[@type = substring-before($dependencyKey, '=') and @value = substring-after($dependencyKey, '=') and ((@satisfied, 'true')[1] = $satisfied)]]"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="$testcases[(.|..)/fots:dependency[@type = 'feature' and @value = $dependencyKey and ((@satisfied, 'true')[1] = $satisfied)]]"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </table>
                  
               </body>
            </html>  
         </xsl:result-document>
         
      </xsl:for-each-group>
      
   </xsl:template>
   
   <xsl:template name="changeList">
      <xsl:variable name="catalog" select="doc('../catalog.xml')"/>
      <xsl:variable name="changesDoc" select="doc('../changes.xml')"/>
      <xsl:variable name="changes" select="distinct-values($changesDoc//change/@id)" />
      <xsl:variable name="testsets" select="$catalog//fots:test-set/doc(resolve-uri(@file,base-uri(..)))/fots:test-set" />
      
      <xsl:for-each select="$changes">
         <xsl:sort select="$changesDoc//change[@id = current()]/string()" lang="en"/>
         <xsl:variable name="changei" select="." />
         <xsl:variable name="desc" select="$changesDoc//change[@id = current()]/string()"/>
         <xsl:variable name="relevant-test-cases" 
            select="$testsets[tokenize(@covers, ' ') = $changei]/fots:test-case |
            $testsets/fots:test-case[tokenize(@covers, ' ') = $changei]" />
         <p><a href="new/{.}.html"><xsl:value-of select="$desc, concat('(', count($relevant-test-cases), ')')"/></a></p>
         <xsl:result-document href="new/{.}.html">
            <html>
               <head>
                  <title>Test results covering change: <xsl:value-of select="$desc"/></title>
               </head>
               <body>
                  <p>
                  <button type="button" onclick="window.location='../report.html'">Main Report</button>
                  <xsl:text>&#xa0;&#xa0;</xsl:text>
                  <button type="button" onclick="window.location='javascript:javascript:history.go(-1)'">Back</button>
                  </p>   
                  <h1>Test results covering change: <i><xsl:value-of select="$desc"/></i></h1>

                  <p><b>Change id: <xsl:value-of select="." /></b></p>
 
                  <table>
                     <tr>
                        <td/>
                        <xsl:for-each select="$resultsDocs">
                           <td><xsl:value-of select="fotsr:test-suite-result/fotsr:product/concat(@name, ' ', @version)"/></td>
                        </xsl:for-each>
                     </tr>
                     <xsl:apply-templates select="$relevant-test-cases"/>
                  </table>
 
               </body>
            </html>  
         </xsl:result-document>
      </xsl:for-each>
      
   </xsl:template>


   <!--
     escape()
     Screen out characters that are not permitted in HTML
   -->

   <xsl:function name="fotsr:escape" as="xs:string">
      <xsl:param name="in" as="xs:string"/>
      <xsl:sequence select="replace($in, '[&#x80;-&#x9F;]', '?')"/>
   </xsl:function>

   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fots:test-case                                                       -->
   <!--                                                                      -->
   <!-- Generate the test group hierarchy for the left-most column           -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fots:test-case">
 
      <xsl:variable name="test-name" select="@name"/>
      <xsl:variable name="creator" select="./fots:created/@by"/>
      <xsl:variable name="test-casei" select="./fots:test"/>
      <!--<xsl:variable name="FilePath" select="@FilePath" />-->

      <xsl:variable name="failedresults">
         <xsl:for-each select="$resultsDocs">
            <xsl:variable name="results" select="key('byname', $test-name)"/>
            <xsl:if test="count($results[@result='fail']) > 0">
               <xsl:value-of select="1"/>
            </xsl:if>
         </xsl:for-each>
      </xsl:variable>

      <xsl:variable name="failed" select="string-length($failedresults)"/>

      <xsl:if test="not($failures) or $failed > 0">
         <tr>
            <td valign="top">
               <xsl:for-each select="ancestor::fots:test-set"
                  >&#xA0;&#xA0;&#xA0;&#xA0;</xsl:for-each>

               <a name="#x{$test-name}">
                  <xsl:value-of select="$test-name"/>
               </a>
               <a href="#x{$test-name}" onmousedown="makeVisible('{$test-name}');"
                  onmouseover="makeVisible('{$test-name}');" id="x{$test-name}">[+]</a>
               
               <font size="-1">
                  <div id="{$test-name}"
                     style="position:absolute; left:20; width:410px; height:10; visibility:hidden">
                     <font face="verdana, arial, helvetica, sans-serif" size="2">
                        <div
                           style="float:left; background-color:white; padding:3px; border:1px solid black">
                           <span
                              style="float:right; background-color:gray; color:white; font-weight:bold; width='20px'; text-align:center; cursor:pointer"
                              onclick="makeInvisible('{$test-name}')">&#160;X&#160;</span>
                           <b><xsl:value-of select="$test-name"/>:</b>
                           <br/>
                           <br/>
                           <xsl:value-of select="fotsr:escape($test-casei)"/>
                        </div>
                     </font>
                  </div>

               </font>

               <!-- generate links to catalog and query -->


               <xsl:if test="$failures">
                  <br>
                     <font size="-1">
                        <xsl:for-each select="ancestor::fots:test-set"
                           >&#xA0;&#xA0;&#xA0;&#xA0;</xsl:for-each>
                        <xsl:text>(Created by </xsl:text>
                        <xsl:value-of select="$creator"/>
                        <xsl:text>)</xsl:text>
                     </font>
                  </br>
               </xsl:if>
            </td>


            <xsl:for-each select="$resultsDocs">
               <!--<xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:syntax"/>-->
               <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:implementation/@name"/>

               <xsl:variable name="test" select="key('byname', $test-name)"/>

               <!-- Long text causes horizaontal scrolling                          -->
               <!-- IE solution style="word-break:break-all; word-wrap:break-word;" -->
               <!-- Another solution is to add <wbr> tags inside the text           -->
               <!-- Some suggest  style="overflow-x:hidden;"                        -->

               <td valign="top">
                  <xsl:attribute name="bgcolor" select="fotsr:status-color($test/@result)"/>
                  <xsl:choose>
                     <xsl:when test="$test">
                        <xsl:value-of select="$test/@result"/>
                        <xsl:if test="$test/@comment">
                           <div align="left" width="20">
                              <font size="1">
                                 <p>
                                    <xsl:value-of select="$test/@comment"/>
                                 </p>
                              </font>
                           </div>
                        </xsl:if>

                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:text>no result</xsl:text>
                     </xsl:otherwise>
                  </xsl:choose>
               </td>
            </xsl:for-each>

         </tr>
      </xsl:if>
   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fotsr:product                                                 -->
   <!--                                                                      -->
   <!-- Generate rows that provide information about the implementation      -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fotsr:product">
      <table width="100%">
         <tr>
            <td width="25%" valign="top">Vendor:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="@vendor"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Product:</td>
            <td valign="top">
               <xsl:value-of select="@name"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Version:</td>
            <td valign="top">
               <xsl:value-of select="@version"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Released:</td>
            <td valign="top">
               <xsl:value-of select="@released"/>
            </td>
         </tr>

         <tr>
            <td style="vertical-align:top">
               <b>Dependencies</b>
            </td>
            <td>
               <table>
                  <xsl:for-each select="fotsr:dependency">
                     <xsl:sort select="@satisfied" order="descending"/>
                     <xsl:sort select="@type"/>
                     <tr>
                        <td>name:  <xsl:value-of select="@type"/></td>
                        <td>&#xA0;</td>
                        <td>value: <xsl:value-of select="@value"/></td>
                        <td>&#xA0;</td>
                        <td>satisfied: <xsl:value-of select="@satisfied"/></td>
                     </tr>
                  </xsl:for-each>

               </table>
            </td>
         </tr>



      </table>
   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fotsr:test-run                                                       -->
   <!--                                                                      -->
   <!-- Generate rows that provide information about the running of the test -->
   <!-- suite.                                                               -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fotsr:test-run">
      <table width="100%">
         <tr>
            <td width="25%" valign="top">Date:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="@dateRun"/>
            </td>
         </tr>
         <tr>
            <td width="25%" valign="top">Test Suite Version:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="fotsr:test-suite/@version"/>
            </td>
         </tr>
         <!--  <tr>
               <td valign="top">Syntax:</td>
               <td valign="top"><xsl:value-of select="../fotsr:syntax"/></td>
            </tr>-->

         <!-- <xsl:if test='fotsr:transformation'>
               <tr>
                  <td valign="top" colspan="2">
                     Transformation:
                     <blockquote>
                        <xsl:apply-templates select='fotsr:transformation/*'/>
                     </blockquote>
                  </td>
               </tr>         
            </xsl:if>
            <xsl:if test='fotsr:comparison'>
               <tr>
                  <td valign="top" colspan="2">
                     Comparison:
                     <blockquote>
                        <xsl:apply-templates select='fotsr:comparison/*'/>
                     </blockquote>
                  </td>
               </tr>         
            </xsl:if>
            <xsl:if test='fotsr:otherComments'>
               <tr>
                  <td valign="top" colspan="2">
                     Other Comments:
                     <blockquote>
                        <xsl:apply-templates select='fotsr:otherComments/*'/>
                     </blockquote>
                  </td>
               </tr>         
            </xsl:if>-->
      </table>
   </xsl:template>





   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fotsr:p                                                              -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fotsr:p">
      <p>
         <xsl:apply-templates/>
      </p>
   </xsl:template>


   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- common HTML tags                                                     -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="p | table | tr | th | td | ol | ul | li | br">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>





   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fotsr:implementation-defined                                         -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fotsr:implementation-defined">
      <table border="0">
         <xsl:apply-templates/>
      </table>
   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fotsr:Feature                                                        -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fotsr:Feature">
      <tr>
         <td width="30%" valign="top">
            <xsl:value-of select="@name"/>
            <xsl:text>:&#xA0;</xsl:text>
         </td>
         <td width="70%" valign="top">
            <xsl:value-of select="@value"/>
         </td>
      </tr>
   </xsl:template>
   
   <!-- Filters -->
   
   <xsl:variable name="filterElements" as="element()*">
      <specification/>
      <dependency/>
      <facility/>
      <true/>
   </xsl:variable>
   
   <xsl:template match="specification" mode="filter" as="xs:boolean">
      <xsl:param name="test-case" required="yes"/>
      <xsl:param name="criterion" tunnel="yes"/>
      <xsl:variable name="dependency" select="$test-case/(.|..)/fots:dependency[@type='spec'][last()]"/>
      <xsl:sequence select="empty($dependency) or contains($dependency, $criterion) or 
         ($criterion = 'XQ30' and contains($dependency, 'XQ10+')) or
         ($criterion = 'XP30' and contains($dependency, 'XP20+'))"/>
   </xsl:template>
   
   <xsl:template match="dependency" mode="filter" as="xs:boolean">
      <xsl:param name="test-case" required="yes"/>
      <xsl:param name="criterion" tunnel="yes"/>
      <xsl:sequence select="true()"/> <!-- temporary -->
   </xsl:template>
   
   <xsl:template match="facility" mode="filter" as="xs:boolean">
      <xsl:param name="test-case" required="yes"/>
      <xsl:param name="criterion" tunnel="yes"/>
      <xsl:sequence select="$test-case/(.|..)/@covers = $criterion"/>
   </xsl:template>
   
   <xsl:template match="true" mode="filter" as="xs:boolean">
      <xsl:param name="test-case" required="yes"/>
      <xsl:param name="criterion" tunnel="yes"/>
      <xsl:sequence select="true()"/>
   </xsl:template>


</xsl:stylesheet>
