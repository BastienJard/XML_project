<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--
    Le PDG de l'entreprise souhaite avoir acc�s � toutes les informations de ses employ�s tel que l'�tat civil en g�n�ral ainsi que le salaire que touche l'employ�.
    -->

    <xsl:template match="/">
        <html>
            <head>
                <title> Liste employ�s </title>
            </head>
            <body>
                <h2>Liste de tous les employ�s :</h2>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="compagnie">
        <p>
            <xsl:apply-templates select="employes"/>
        </p>
    </xsl:template>

    <xsl:template match="employes/conseillers/conseiller">
        <h3> -
            <xsl:value-of select="etatcivil/nom"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="etatcivil/prenom"/> :
        </h3>
        <span style="margin-left:30px"> - date de naissance :
            <xsl:value-of select="etatcivil/naissance"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - situation :
            <xsl:value-of select="etatcivil/situation"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - adresse :
            <xsl:value-of select="etatcivil/adresse"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - code postal :
            <xsl:value-of select="etatcivil/code_postal"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - ville :
            <xsl:value-of select="etatcivil/ville"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - pays :
            <xsl:value-of select="etatcivil/pays"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - num�ro de t�l�phone :
            <xsl:value-of select="etatcivil/telephone"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - adresse mail :
            <xsl:value-of select="etatcivil/email"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - num�ro de s�curit� sociale :
            <xsl:value-of select="etatcivil/numeroSecuriteSociale"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - salaire annuel :
            <xsl:value-of select="salaire"/>
            <br/>
        </span>
    </xsl:template>

    <xsl:template match="employes/secretaires/secretaire">
        <h3> -
            <xsl:value-of select="etatcivil/nom"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="etatcivil/prenom"/> :
        </h3>
        <span style="margin-left:30px"> - date de naissance :
            <xsl:value-of select="etatcivil/naissance"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - situation :
            <xsl:value-of select="etatcivil/situation"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - adresse :
            <xsl:value-of select="etatcivil/adresse"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - code postal :
            <xsl:value-of select="etatcivil/code_postal"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - ville :
            <xsl:value-of select="etatcivil/ville"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - pays :
            <xsl:value-of select="etatcivil/pays"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - num�ro de t�l�phone :
            <xsl:value-of select="etatcivil/telephone"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - adresse mail :
            <xsl:value-of select="etatcivil/email"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - num�ro de s�curit� sociale :
            <xsl:value-of select="etatcivil/numeroSecuriteSociale"/>
            <br/>
        </span>
        <span style="margin-left:30px"> - salaire annuel :
            <xsl:value-of select="salaire"/>
            <br/>
        </span>
    </xsl:template>

</xsl:stylesheet>
