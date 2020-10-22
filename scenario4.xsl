<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--
   Un service internet de comparaison de prix d'assurance souhaite inclure la compagnie dans son comparateur de prix,
   et � donc besoin pour se faire des contrats propos�s par la compagnie avec les services et les prix associ�s aux contrats.
    -->

    <xsl:template match="/">
        <html>
            <head>
                <title> Assurances propos�es </title>
            </head>
            <body>
                <h2>Tous les contrats assurances disponibles dans l'agence :</h2>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="compagnie">
        <p>
            <xsl:apply-templates select="contrats/contrat"/>
        </p>
    </xsl:template>

    <xsl:template match="contrat">
        <h3> -
            <xsl:value-of select="nom"/>
        </h3>
        <span style="margin-left:30px">
            <xsl:value-of select="description"/>
            <br/>
        </span>

    </xsl:template>

</xsl:stylesheet>
