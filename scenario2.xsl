<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="clientListe" match="compagnie/clients/client" use="@idClient" />
    <xsl:key name="contratsListe" match="compagnie/contrats/contrat" use="@idContrat" />
    <xsl:template match="/">
        <html>
            <head>
                <title> Clients des conseillers </title>
            </head>
            <body>
                <h2>Tous les conseillers et les clients associés :</h2>
                    <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="compagnie">
        <p>
            <xsl:apply-templates select="employes/conseillers/conseiller"/>
        </p>
    </xsl:template>

    <xsl:template match="conseiller">
        <p>
            <xsl:apply-templates select="etatcivil"/>
        </p>
        <span style="margin-left:25px"> Clients :
            <br/>
            <xsl:apply-templates select="clientsAssocies/client"/>
        </span>

    </xsl:template>

    <xsl:template match="etatcivil"> Conseiller :
        <span style="color:#ff0000">
            <xsl:value-of select="nom"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="prenom"/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="clientsAssocies/client">
        <span style="margin-left:30px;color:#0000ff"> -
            <xsl:value-of select="key('clientListe',@clientId)/etatcivil/nom"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="key('clientListe',@clientId)/etatcivil/prenom"/>
            <br/>
        </span>
        <span style="margin-left:40px"> Contrats souscrits :
            <xsl:apply-templates select="key('clientListe',@clientId)/contrats/contrat"/>
            <br/>
        </span>

    </xsl:template>

    <xsl:template match="contrat">
        <br/>
        <span style="margin-left:55px"> -
            <xsl:value-of select="key('contratsListe',@contratId)/nom"/>
        </span>

    </xsl:template>

</xsl:stylesheet>