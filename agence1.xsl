<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
    <head>
        <meta charset="utf-8" />
        <title>Agence Immobilière 1</title>
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
                width:15em;
                padding:1em 1em;
            }
            h2 span{
                font-size: 1.5em;
            }
            #first{
                list-style-type:square;
                padding: 1.5em 2 em;
                width: 25em;
                border: 1px solid #ccc;
                font-size:2em;
                margin: 0 auto;
                margin-bottom: 1.5em;
               
            }
            #first .title{
                 color:#44bd32;
                 font-weight: 600;
            }
            ul{
                background-color:#fff;
                padding: .8em 1.2em;
            }
            ul ul{
                list-style-type: circle;
                padding:1em;
            }
            ul ul #price{
                width:9em;
                background-color:#fbc531;
                padding: .02em .2em;
                margin-top:.2em;
            }
            #first > li > span.commune{
                color:royalblue;
                font-weight:bold;
            }
            ul ul #danger{
                color:red;
            }
        </style>
    </head>
    <body>
        <h1>Agence Immobilière</h1>
        <h2><span>&#127969;</span> Maisons en vente</h2>
        <xsl:for-each select="agence/offres[@type='vente']/biens/bien">
            <xsl:sort select="prix" data-type="number" order="ascending" />
            <xsl:if test="@type='maison'">
                <xsl:if test="prix &gt;= 200000 and prix &lt;= 300000">
                    <xsl:if test="options/@jardin='oui'">
                        
                            <ul id="first">
                                <li><span class="commune">Commune</span> : <span class="title"> <xsl:value-of select="commune"/></span></li>
                                    <ul>
                                        <li>Nombre de chambres: <xsl:value-of select="nbchambres" /> </li>
                                        <li>Nombre salles de bain : <xsl:value-of select="salledebain" /></li>
                                        <li>Surface : <xsl:value-of select="surface" /> </li>
                                        <li>Nombre de façades : <xsl:value-of select="nbfacades" /> </li>
                                    <xsl:if test="vitrage/@simple='oui'">
                                        <li>Vitrage : Simple</li>
                                    </xsl:if>
                                    <xsl:if test="vitrage/@double='oui'">
                                        <li>Vitrage : Double</li>
                                    </xsl:if>
                                    <xsl:if test="vitrage/@triple='oui'">
                                        <li>Vitrage : Triple</li>
                                    </xsl:if>
                                    <xsl:if test="chauffage/@gaz = 'oui'">
                                        <li>Chauffage: Gaz</li>
                                    </xsl:if>
                                    <xsl:if test="chauffage/@mazout = 'oui'">
                                        <li>Chauffage: Mazout</li>
                                    </xsl:if>
                                    <xsl:if test="chauffage/@gaz='non'">
                                        <xsl:if test="chauffage/@mazout='non'">
                                            <li id="danger">ATTENTION : Pas de chauffage central !</li>
                                        </xsl:if>
                                    </xsl:if>
                                        <li><span id="price">Prix : <xsl:value-of select="prix" /> €</span></li>
                                    </ul>
                            </ul>
                       
                    </xsl:if>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>	