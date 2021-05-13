<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="swiper-container tabs">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="Zone/Zone/Zone/Zone"></xsl:apply-templates>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <xsl:attribute name="data-href">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>swiper-inner active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="position() = 6">
                    <xsl:attribute name="class">
                        <xsl:text>swiper-inner active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <div class="desc f-24 fw-700 color-gray-2">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
                <div class="dot"> </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
