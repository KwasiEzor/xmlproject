<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Agence Immobilière 2</title>
        <style>
             html,body{
                font-family: 'Montserrat',sans-serif;
                background-color:#dcdde1;
            }
            h1{
                margin: 0 auto;
                width: 400px;
                padding: 0.8em 1em;
                border: 1px solid #ccc;
                background-color: royalblue;
                color:#fff;
                border-radius: 5%;
                font-weight: bold;
                font-family: 'Montserrat',sans-serif;
                text-align:center;
                text-transform: uppercase;
            }
             h2{
                margin-top:3em;
                color: #060606;
                margin: 0 auto;
                width:20em;
                padding:1em 1em;
            }
             h2 span{
                font-size: 1.5em;
                margin-right:10px;
                margin-left:1.5em;
            }
            #container, #container2{
                width:90%;
                height:auto;
                background-color:#fff;
                margin: 0 auto;
                margin-bottom:2em;
            }
            table{
                width:100%;
            }
            table,td,th{
                border: solid 1px #ccc;
                text-align:center;
                border-collapse:collapse;
                padding:.5em;
            }
            #detail_title{
                width:100%;
                text-align:center;
            }
           
            #commune{
                color:royalblue;
                font-weight:bold;
            }
            #affaire{
                color:#fff;
            }
            #price{
                color:#44bd32;
                font-weight:700;
            }
            #price2{
                font-weight:700;
            }
            
        </style>
    </head>
    <body>
        <h1>Agence Immobilière</h1>
        <h2><span>&#127960;&#65039;</span>Appartements en location</h2>
        <div id="container">
            <table>
                <caption></caption>
                <thead>
                <tr>
                    <th>Commune</th>
                    <th>Surface</th>
                    <th>Nombre chambres</th>
                    <th>Nombre salles de bain</th>
                    <th>Chauffage</th>
                    <th>Vitrage</th>
                    <th>Jardin</th>
                    <th>Garage</th>
                    <th>Prix</th>
                    <th>Commentaire</th>
                </tr>
                </thead>
                <tbody>
                <xsl:for-each select="agence/offres[@type='location']/biens/bien">
                    <xsl:sort select="prix" data-type="number" order="descending" />
                        <xsl:if test="@type='appartement'">
                            <tr>
                                 <xsl:choose>
                                    <xsl:when test="commune='Anderlecht'">
                                        <td><span id="commune"><xsl:value-of select="commune" /></span></td>
                                        <td><xsl:value-of select="surface" /></td>
                                        <td><xsl:value-of select="nbchambres" /></td>
                                        <td><xsl:value-of select="salledebain" /></td>
                                        <xsl:if test="chauffage/@gaz='oui'">
                                            <td>Gaz</td>
                                        </xsl:if>
                                        <xsl:if test="chauffage/@mazout='oui'">
                                            <td>Mazout</td>
                                        </xsl:if>
                                        <xsl:if test="vitrage/@simple='oui'">
                                             <td>Simple</td>
                                        </xsl:if>
                                          <xsl:if test="vitrage/@double='oui'">
                                             <td>double</td>
                                        </xsl:if>
                                          <xsl:if test="vitrage/@triple='oui'">
                                             <td>Simple</td>
                                        </xsl:if>
                                        <xsl:if test="options/@jardin='oui'">
                                            <td>Présent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@garage='oui'">
                                            <td>Présent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@jardin='non'">
                                            <td>Absent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@garage='non'">
                                            <td>Absent</td>
                                        </xsl:if>
                                        <td><span id="price"><xsl:value-of select="prix" /> €</span></td>
                                        <xsl:if test="prix &lt; 1000">
                                            <td bgcolor="#44bd32"><span id="affaire">Super affaire !</span></td>
                                        </xsl:if>
                                    </xsl:when>
                                </xsl:choose> 
                                
                            </tr>
                            <tr>
                                 <xsl:choose>
                                    <xsl:when test="commune='Ixelles'">
                                        <td><span id="commune"><xsl:value-of select="commune" /></span></td>
                                        <td><xsl:value-of select="surface" /></td>
                                        <td><xsl:value-of select="nbchambres" /></td>
                                        <td><xsl:value-of select="salledebain" /></td>
                                        <xsl:if test="chauffage/@gaz='oui'">
                                            <td>Gaz</td>
                                        </xsl:if>
                                        <xsl:if test="chauffage/@mazout='oui'">
                                            <td>Mazout</td>
                                        </xsl:if>
                                        <xsl:if test="vitrage/@simple='oui'">
                                             <td>Simple</td>
                                        </xsl:if>
                                          <xsl:if test="vitrage/@double='oui'">
                                             <td>double</td>
                                        </xsl:if>
                                          <xsl:if test="vitrage/@triple='oui'">
                                             <td>Simple</td>
                                        </xsl:if>
                                        <xsl:if test="options/@jardin='oui'">
                                            <td>Présent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@garage='oui'">
                                            <td>Présent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@jardin='non'">
                                            <td>Absent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@garage='non'">
                                            <td>Absent</td>
                                        </xsl:if>
                                        <td><span id="price"><xsl:value-of select="prix" /> €</span></td>
                                        <xsl:if test="prix &lt; 1000">
                                            <td bgcolor="#44bd32"><span id="affaire">Super affaire !</span></td>
                                        </xsl:if>
                                    </xsl:when>
                                </xsl:choose> 
                                
                            </tr>
                            <tr>
                                 <xsl:choose>
                                    <xsl:when test="commune='Schaerbeek'">
                                        <td><span id="commune"><xsl:value-of select="commune" /></span></td>
                                        <td><xsl:value-of select="surface" /></td>
                                        <td><xsl:value-of select="nbchambres" /></td>
                                        <td><xsl:value-of select="salledebain" /></td>
                                        <xsl:if test="chauffage/@gaz='oui'">
                                            <td>Gaz</td>
                                        </xsl:if>
                                        <xsl:if test="chauffage/@mazout='oui'">
                                            <td>Mazout</td>
                                        </xsl:if>
                                        <xsl:if test="vitrage/@simple='oui'">
                                             <td>Simple</td>
                                        </xsl:if>
                                          <xsl:if test="vitrage/@double='oui'">
                                             <td>double</td>
                                        </xsl:if>
                                          <xsl:if test="vitrage/@triple='oui'">
                                             <td>Simple</td>
                                        </xsl:if>
                                        <xsl:if test="options/@jardin='oui'">
                                            <td>Présent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@garage='oui'">
                                            <td>Présent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@jardin='non'">
                                            <td>Absent</td>
                                        </xsl:if>
                                        <xsl:if test="options/@garage='non'">
                                            <td>Absent</td>
                                        </xsl:if>
                                        <td><span id="price"><xsl:value-of select="prix" /> €</span></td>
                                        <xsl:if test="prix &lt; 1000">
                                            <td bgcolor="#44bd32"><span id="affaire">Super affaire !</span></td>
                                        </xsl:if>
                                    </xsl:when>
                                </xsl:choose> 
                                
                            </tr>
                        </xsl:if>
                </xsl:for-each>
                </tbody>
            </table>
        </div>
        <h2><span>&#127969;</span> Maisons en location</h2>
        <div id="container2">
            <table>
                <caption></caption>
                <thead>
                <tr>
                    <th>Commune</th>
                    <th>Nombre chambres</th>
                    <th>Nombre salles de bain</th>
                    <th>Nombre de façades</th>
                    <th>Nombre d'étages</th>
                    <th>Prix</th>
                    
                </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="agence/offres[@type='location']/biens/bien">
                    <xsl:sort select="prix" data-type="number" order="ascending" />
                        <xsl:if test="@type='maison'">
                            <tr>
                                 <xsl:choose>
                                    <xsl:when test="commune='Schaerbeek'">
                                        <td><span id="commune"><xsl:value-of select="commune" /></span></td>
                                        <td><xsl:value-of select="nbchambres" /></td>
                                        <xsl:if test="salledebain &gt;= 2">
                                            <td><xsl:value-of select="salledebain" /></td>
                                        </xsl:if>
                                        <td><xsl:value-of select="nbfacades" /></td>
                                        <td><xsl:value-of select="nbetages" /></td>
                                        <td><span id="price2"><xsl:value-of select="prix" /> €</span></td>
                                      
                                    </xsl:when>
                                </xsl:choose> 
                            </tr>
                             <tr>
                                 <xsl:choose>
                                    <xsl:when test="commune='Ixelles'">
                                        <td><span id="commune"><xsl:value-of select="commune" /></span></td>
                                        <td><xsl:value-of select="nbchambres" /></td>
                                        <xsl:if test="salledebain &gt;= 2">
                                            <td><xsl:value-of select="salledebain" /></td>
                                        </xsl:if>
                                        <td><xsl:value-of select="nbfacades" /></td>
                                        <td><xsl:value-of select="nbetages" /></td>
                                        <td><span id="price2"><xsl:value-of select="prix" /> €</span></td>
                                      
                                    </xsl:when>
                                </xsl:choose> 
                            </tr>
                            <tr>
                                 <xsl:choose>
                                    <xsl:when test="commune='Anderlecht'">
                                        <td><span id="commune"><xsl:value-of select="commune" /></span></td>
                                        <td><xsl:value-of select="nbchambres" /></td>
                                        <xsl:if test="salledebain &gt;= 2">
                                            <td><xsl:value-of select="salledebain" /></td>
                                        </xsl:if>
                                        <td><xsl:value-of select="nbfacades" /></td>
                                        <td><xsl:value-of select="nbetages" /></td>
                                        <td><span id="price2"><xsl:value-of select="prix" /> €</span></td>
                                      
                                    </xsl:when>
                                </xsl:choose> 
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </tbody>
            </table>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>	