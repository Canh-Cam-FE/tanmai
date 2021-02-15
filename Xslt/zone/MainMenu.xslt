<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <ul class="navbar-nav d-flex align-center">
            <xsl:apply-templates select="Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <li class="nav-item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>nav-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <a class="nav-link f-14 fw-600 color-text text-uppercase">
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <em class="material-icons">home</em>
                </a>
            </xsl:if>
            <xsl:if test="position() > 1">
                <a class="nav-link f-14 fw-600 color-text text-uppercase">
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </xsl:if>
        </li>
    </xsl:template>
</xsl:stylesheet>
