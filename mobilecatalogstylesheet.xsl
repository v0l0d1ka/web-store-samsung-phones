<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : mobilecatalogstylesheet.xsl
    Created on : 24 Ноябрь 2016 г., 11:49
    Author     : vova
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>mobilecatalogstylesheet.xsl</title>
            </head>
            <body>
                <div style="height: 100px; width:100%; background: #333333;">
                    <h1>
                        <a href="#">
                            <img src="images/logo.png" width="200" height="80" class="logo" />
                        </a>
                    </h1>
                </div>
                <h1>My Samsung Phone Catalog</h1>
                <table border="1" >
                    <tr>
                        <th>model</th>
                        <th>realised</th>
                        <th>weight</th>
                        <th>thickness</th>
                        <th>os</th>
                        <th>storage</th>
                        <th>price</th>
                    </tr>
                    <xsl:for-each select="catalog/mobilePhone">
                        
                            <xsl:sort select="price"   />
                            <xsl:if test="price &gt; 1000">
                            <tr>
                                <td>
                                    <xsl:value-of select="model"/>
                                </td>
                                <td>
                                    <xsl:value-of select="realised"/>
                                </td>
                                <td>
                                    <xsl:value-of select="weight"/>
                                </td>
                                <td>
                                    <xsl:value-of select="thickness"/>
                                </td>
                                <td>
                                    <xsl:value-of select="os"/>
                                </td>
                                <td>
                                    <xsl:value-of select="storage"/>
                                </td>
                                <xsl:choose>
                                    <xsl:when test="price &gt; 80">
                                        <td bgcolor="red">
                                            <xsl:value-of select="price"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td bgcolor="red">
                                            <xsl:value-of select="price"/>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
            
           
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
