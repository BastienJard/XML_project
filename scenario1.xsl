<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!--
    Le PDG de l'entreprise veut pouvoir visualiser la liste de toutes les agences de l'entreprise avec leurs coordonnées
     ainsi que les employés qui y sont rattachés, et ce afin de savoir si des embauches sont nécessaires dans certaines agences.
    -->

    <xsl:key name="conseillerKey" match="compagnie/employes/conseillers/conseiller/agenceAssociee" use="@agenceId"/>
    <xsl:key name="secretaireKey" match="compagnie/employes/secretaires/secretaire/agenceAssociee" use="@agenceId"/>

    <xsl:template match="/">d
        <html>
            <head/>
            <body>
                <h1>Liste des agences et des employés associés</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="compagnie">
        <html>
            <body>
                <xsl:apply-templates select="agences"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="agences/agence">
        <html>
            <body>
                <h2 style="color:#ff0000"> Agence : <xsl:value-of select="nom"/></h2>
                <text> Adresse :
                    <xsl:value-of select="adresse"/>,
                    <xsl:value-of select="code_postal"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="ville"/>
                    <br/>Telephone :
                    <xsl:value-of select="telephone"/>
                    <br/>Adresse mail :
                    <xsl:value-of select="email"/>
                    <br/>Conseillé associé :
                    <xsl:value-of select="key('conseillerKey',@idAgence)/../etatcivil/nom"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="key('conseillerKey',@idAgence)/../etatcivil/prenom"/>
                    <br/>Secrétaire associée :
                    <xsl:value-of select="key('secretaireKey',@idAgence)/../etatcivil/nom"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="key('secretaireKey',@idAgence)/../etatcivil/prenom"/>
                </text>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
