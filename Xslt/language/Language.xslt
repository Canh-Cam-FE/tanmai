<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/LanguageList">
        <div class="dropdown">
            <div class="language d-flex align-center">
                <xsl:apply-templates select="Language[IsActive='true']" mode="Active"></xsl:apply-templates>
                <em class="material-icons">expand_more</em>
            </div>
            <div class="dropdown-menu">
                <ul>
                    <xsl:apply-templates select="Language[IsActive='false']" mode="Drop"></xsl:apply-templates>
                </ul>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Language" mode="Active">
        <a class="nav-item f-14 fw-500 color-gray">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>nav-item active f-14 fw-500 color-gray</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </a>
    </xsl:template>
    <xsl:template match="Language" mode="Drop">
        <li>
            <a class="f-14 fw-500 color-gray">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
