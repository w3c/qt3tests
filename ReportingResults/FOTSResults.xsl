<?xml version="1.0"?> 

<!--                                                                         -->
<!-- Generate a report for one or more XQTS result reports                   -->
<!--                                                                         -->
<!-- Author: O'Neil Delpratt                                                -->
<!-- Based upon the XQTS results stylesheet written by  Andrew Eisenberg     -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2012-08-08    Initial release                                         -->
<!--                                                                         -->

<!-- Columns and organizatons can be marked with anonymous true or false.    -->
<!-- If absent, then false is assumed.                                       -->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
   xmlns:fots="http://www.w3.org/2010/09/qt-fots-catalog"
   xmlns:fotsr="http://www.w3.org/2010/09/qt-fots-results"
   xmlns:xs="http://www.w3.org/2001/XMLSchema">

   <xsl:output method="html" indent="yes"/>

   <xsl:strip-space elements="*"/>


   <!--                                                                      -->
   <!-- Parameters                                                           -->
   <!--                                                                      -->

   <!-- Place document author at end of report -->
   <xsl:param name="documentAuthor" select="''"/>

   <!-- Place creation date at end of report -->
   <xsl:param name="creationDate" select="''"/>

   <!-- Document that contains URLs of result reports -->
   <!-- <results><result>url</result>...</results> -->
   <xsl:param name="resultsDocs" select="collection('../results/saxon/?select=results*.xml')"/>
   

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


   <xsl:variable name="summaryColumns">
      <xsl:choose>
         <xsl:when test="count($resultsDocs) &gt; 1">1</xsl:when>
         <xsl:otherwise>0</xsl:otherwise>
      </xsl:choose>
   </xsl:variable>

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

   <xsl:variable name="perfectcolor" select="&quot;mediumseagreen&quot;"/>
   <xsl:variable name="passcolor" select="&quot;palegreen&quot;"/>
   <xsl:variable name="failcolor" select="&quot;coral&quot;"/>
   <xsl:variable name="untestedcolor" select="&quot;white&quot;"/>
   <xsl:variable name="backgroundcolor" select="&quot;lightcyan&quot;"/>
   <xsl:variable name="groupcolor" select="&quot;paleturquoise&quot;"/>

   <xsl:key name="byname" match="fotsr:testcase" use="@name"/>
   <xsl:key name="testSetByName" match="fots:test-set" use="@name"/>

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

      <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
            <title>
               <xsl:text>Functions and Operations Test Suite Result Summary</xsl:text>
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
                  <xsl:text>Functions and Operators Test Suite Result Summary</xsl:text>
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
                     href="http://dev.w3.org/2011/QT3-test-suite/">Functions and Operators Test
                     Suite (FOTS)</a> on one or more implementaions of XQuery and XPath. </p>

               <p>
                  <xsl:text>The latest version of this test suite is FOTS </xsl:text>
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

            <blockquote>

               <xsl:for-each select="$resultsDocs">
                  <xsl:variable name="resultsFilename"
                     select="concat('results_',./fotsr:FOTS-test-suite-result/fotsr:implementation/@processor, '_', ./fotsr:FOTS-test-suite-result/fotsr:implementation/@version, '.html')"/>
                  <xsl:result-document href="{$resultsFilename}">
                     <html>
                        <head/>
                        <body>
                           <button type="button" onclick="window.location='FOTSReport.html'"
                              >Main Report</button>
                           <h2>Implementation:</h2>
                           <hr/>
                           <!-- <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:syntax"/>-->
                           <!-- <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:implementation/@name"/>-->
                           <xsl:variable name="result"
                              select="./fotsr:FOTS-test-suite-result/fotsr:implementation"/>
                           <xsl:variable name="test-run"
                              select="./fotsr:FOTS-test-suite-result/fotsr:test-run"/>

                           <!-- Skip implementations that wish to be anonymous -->

                           <xsl:if test="not($result/fotsr:organization/@anonymous = 'true')">
                              <h3>
                                 <xsl:value-of select="$result/@name"/>
                              </h3>
                              <blockquote>
                                 <xsl:apply-templates select="$result"/>
                              </blockquote>
                           </xsl:if>
                        </body>
                     </html>
                  </xsl:result-document>
               </xsl:for-each>

            </blockquote>


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


            <!-- Generate the document footer with author and creation date -->

            <xsl:if test="$documentAuthor != '' or $creationDate != ''">

               <p/>
               <p align="right">
                  <small>
                     <xsl:if test="$documentAuthor != ''">
                        <xsl:text>Generated: </xsl:text>
                        <xsl:value-of select="$documentAuthor"/>
                        <br/>
                     </xsl:if>
                     <xsl:if test="$creationDate != ''">
                        <xsl:value-of select="$creationDate"/>
                        <br/>
                     </xsl:if>
                  </small>
               </p>
            </xsl:if>

         </body>

      </html>
      
      <xsl:call-template name="changeList" />
      

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
               <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:implementation/@name"/>
               <xsl:variable name="resultsFilename">
                  <xsl:choose>
                     <xsl:when test="$testType='Test-sets'">
                        <xsl:value-of
                           select="concat('results_',./fotsr:FOTS-test-suite-result/fotsr:implementation/@processor, '_', ./fotsr:FOTS-test-suite-result/fotsr:implementation/@version, '.html')"/>      
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:value-of
                           select="concat('../results_',./fotsr:FOTS-test-suite-result/fotsr:implementation/@processor, '_', ./fotsr:FOTS-test-suite-result/fotsr:implementation/@version, '.html')"/>
                     </xsl:otherwise>
                  </xsl:choose></xsl:variable>
               <th valign="top">
                  <xsl:choose>
                     <xsl:when
                        test="./fotsr:FOTS-test-suite-result/fotsr:implementation/@anonymous-result-column = 'true'">
                        <xsl:text>Anonymous</xsl:text>
                     </xsl:when>
                     <xsl:otherwise>
                        <a href="{$resultsFilename}">
                           <xsl:value-of
                              select="./fotsr:FOTS-test-suite-result/fotsr:implementation/@name"/>
                        </a>
                     </xsl:otherwise>
                  </xsl:choose>
                  <xsl:if
                     test="./fotsr:FOTS-test-suite-result/fotsr:implementation/@version != $FOTSversion">
                     <br/>
                     <font size="-1">
                        <xsl:choose>
                           <xsl:when
                              test="./fotsr:FOTS-test-suite-result/fotsr:implementation/@version = ''">
                              <xsl:text>(unspecified)</xsl:text>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:text>(FOTS </xsl:text>
                              <xsl:value-of
                                 select="./fotsr:FOTS-test-suite-result/fots:implementation/@version"/>
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

      <!-- Generate the legent -->
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
                     <xsl:if test="$summaryColumns = 1">
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
                        <button type="button" onclick="window.location='../FOTSReport.html'"
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
            <h2>Results by Processors</h2>
            <xsl:for-each select="$resultsDocs/fotsr:FOTS-test-suite-result/fotsr:implementation/@processor">
               <xsl:sort select="."/>
               <a href="#{.}"><xsl:value-of select="." /></a> <br/>  
               
            </xsl:for-each>
            
            <xsl:variable name="test-set" select="fots:test-set" />
            <xsl:for-each-group select="$resultsDocs"  group-by="fotsr:FOTS-test-suite-result/fotsr:implementation/@processor">
               <xsl:sort select="fotsr:FOTS-test-suite-result/fotsr:implementation/@processor"/>

            <blockquote>
               <xsl:variable name="processor" select="current-group()/fotsr:FOTS-test-suite-result/fotsr:implementation/@processor" />
               <table width="100%"><tr ><td width="70%"><h3> <a name="{$processor}"></a><xsl:value-of select="$processor" /></h3></td><td align="right"><a href="#top">Back to Top</a></td></tr></table> 
               <table frame="hsides" rules="groups" border="1" bordercolor="black"
                  bgcolor="{$backgroundcolor}" cellpadding="2">
                  <tbody>
                     <colgroup align="left"/>
                     <!--  <colgroup align="center" span="{$xquery}"/>
            <colgroup align="center"  span="{$xqueryx}"/>-->
                     <xsl:if test="$summaryColumns = 1">
                        <colgroup align="left"/>
                        <xsl:if test="not($detail)">
                           <xsl:call-template name="headings">
                              <xsl:with-param name="resultsDocsGrouped" select="current-group()" />  
                           </xsl:call-template>
                        </xsl:if>
                       
                        <xsl:apply-templates select="$test-set">
                           <xsl:with-param name="detail" select="$detail"/>
                           <xsl:with-param name="resultsDocsGrouped" select="current-group()" />
                        </xsl:apply-templates>
                     </xsl:if>
                  </tbody>
               </table>
            </blockquote>
            </xsl:for-each-group>
         </xsl:otherwise>
      </xsl:choose>



   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- fots:test-group                                                      -->
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

               <xsl:if test="$summaryColumns = 1">
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
                 <xsl:sort select="./fotsr:FOTS-test-suite-result/fotsr:implementation/@name"/>
                  <xsl:variable name="syntax" select="./fotsr:FOTS-test-suite-result/fotsr:syntax"/>
                  <td align="center">

                     <xsl:variable name="results" select="key('testSetByName', $testSetName)"
                        as="element(fotsr:test-set)?"/>

                     <xsl:variable name="passed"
                        select="count($results/fotsr:testcase[@result='full' or @result='pass'])"/>
                     <xsl:variable name="failed"
                        select="count($results/fotsr:testcase[@result='fail'])"/>
                     <xsl:variable name="total">
                        <xsl:value-of select="$rawtotal"/>
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

               <xsl:if test="$summaryColumns = 1">
                  <td align="center">
                     <xsl:variable name="totalresults" select="count($resultsDocsGrouped)"/>
                     <xsl:variable name="passresults">
                        <xsl:for-each select="$resultsDocsGrouped">
                           <xsl:variable name="results" select="key('testSetByName', $testSetName)"
                              as="element(fotsr:test-set)?"/>
                           <xsl:variable name="syntax"
                              select="./fotsr:FOTS-test-suite-result/fotsr:syntax"/>
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
                              test="$total = count($results/fotsr:testcase[@result='full']) and $total != 0">
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
            <a href="../changelists/{.}.html"><xsl:value-of select="." /></a> (No. of tests: <xsl:value-of select="if(. = $testSetFile/fots:test-set/@covers) then count($testSetFile//fots:test-case) else count(current-group())" />), See: <b><xsl:value-of select="string-join((1 to position())!'*')" /></b><br/>
         </xsl:for-each-group>
         <xsl:apply-templates select="$testSetFile//fots:test-case">
            <xsl:with-param name="detail" select="true()"/>
            <xsl:with-param name="specChangeList" select="$specChangeList" />
         </xsl:apply-templates>
         
      </xsl:if>

      <!-- Generate rows for the test groups that are contained -->
   </xsl:template>
   
   <xsl:template name="changeList">
      <xsl:variable name="catalog" select="doc('../catalog.xml')"/>
      <xsl:variable name="changes" select="distinct-values(doc('../changes.xml')//change/@id)" />
      <xsl:variable name="testsets" select="$catalog//fots:test-set/doc(resolve-uri(@file,base-uri(..)))/fots:test-set" />
      
      <xsl:for-each select="$changes">
         <xsl:variable name="changei" select="." />
         <xsl:result-document href="changelists/{.}.html">
            <button type="button" onclick="window.location='javascript:javascript:history.go(-1)'">Back</button><br/>
            <b>Change id: <xsl:value-of select="." /></b>
            <xsl:variable name="relevant-test-sets" select="$testsets[@covers = $changei]/@name" />
            <xsl:variable name="relevant-test-cases" select="$testsets/fots:test-case[tokenize(@covers, ' ') = $changei]/@name" />
            <br/><b>Test-sets</b><br/>
            <xsl:for-each select="$relevant-test-sets">
               <a href="../testSets/{.}.html"><xsl:value-of select="." /></a><br/>               
            </xsl:for-each>
         <br/>
         <b>Test-cases</b><br/>
            <xsl:for-each select="$relevant-test-cases">
               <xsl:value-of select="." /><br/>               
            </xsl:for-each>
         </xsl:result-document>
      </xsl:for-each>
      
   </xsl:template>




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
      <xsl:param name="specChangeList" />
      <xsl:variable name="specChangeNum" select="if (@covers) then index-of(distinct-values($specChangeList), @covers) else 0"/>
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
               <b><xsl:value-of select="string-join((1 to $specChangeNum)!'*')" /></b>
              
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
                  <xsl:attribute name="bgcolor">
                     <xsl:choose>
                        <xsl:when test="$test/@result=&quot;pass&quot;">
                           <xsl:value-of select="$perfectcolor"/>
                        </xsl:when>
                        <xsl:when test="$test/@result=&quot;fail&quot;">
                           <xsl:value-of select="$failcolor"/>
                        </xsl:when>
                     </xsl:choose>
                  </xsl:attribute>
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
   <!-- fotsr:implementation                                                 -->
   <!--                                                                      -->
   <!-- Generate rows that provide information about the implementation      -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="fotsr:implementation">
      <table width="100%">
         <tr>
            <td width="25%" valign="top">Organization:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="fotsr:organization/@name"/>
               <br/>
               <xsl:if test="fotsr:organization/@website">
                  <a href="{fotsr:organization/@website}">
                     <xsl:value-of select="fotsr:organization/@website"/>
                  </a>
               </xsl:if>
            </td>
         </tr>
         <tr>
            <td valign="top">Implementation:</td>
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
            <td valign="top">Processor:</td>
            <td valign="top">
               <xsl:value-of select="@processor"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Date:</td>
            <td valign="top">
               <xsl:value-of select="./../fotsr:test-run/@dateRun"/>
            </td>
         </tr>
         <tr>
            <td style="vertical-align:top">
               <b>Dependencies</b>
            </td>
            <td>
               <table>
                  <xsl:for-each select="./../fotsr:dependencies-satisfied/fotsr:dependency">
                     <xsl:sort select="@satisfied" order="descending"/>
                     <xsl:sort select="@type"/>
                     <tr>
                        <td>name:= <xsl:value-of select="@type"/></td>
                        <td>&#xA0;</td>
                        <td>value:= <xsl:value-of select="@value"/></td>
                        <td>&#xA0;</td>
                        <td>satisfied:= <xsl:value-of select="@satisfied"/></td>
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


</xsl:stylesheet>
