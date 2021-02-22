<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <ul class="navbar d-flex">
            <xsl:apply-templates select="Zone" mode="LV-1"></xsl:apply-templates>
        </ul>
        <div class="section-title color-main">
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LV-1">
        <xsl:if test="ZoneId != 106">
            <li class="fw-500">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>fw-500 active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="count(Zone) > 0">
                    <xsl:attribute name="class">
                        <xsl:text disable-output-escaping="yes">fw-500 dropdown</xsl:text>
                    </xsl:attribute>
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name="class">
                            <xsl:text>fw-500 dropdown active</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <div class="caption">
                        <a class="f-14 color-main" href="">
                            <xsl:attribute name="href">
                                <xsl:text disable-output-escaping="yes">javascript: ;</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a>
                        <em class="material-icons">expand_more</em>
                    </div>
                    <ul class="dropdown-menu">
                        <xsl:apply-templates select="Zone" mode="LV-2"></xsl:apply-templates>
                    </ul>
                </xsl:if>
                <xsl:if test="count(Zone) = 0">
                    <a class="f-14 color-main" href="">
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="LV-2">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
