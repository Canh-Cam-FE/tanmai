<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/BannerList">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="Banner"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="slide-inner">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <xsl:if test="Description != ''">
                    <div class="content">
                        <div class="title fw-600 text-center">
                            <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                        </div>
                    </div>
                </xsl:if>
            </div>
            <a class="slide-button" href="#section-1">
                <em class="material-icons">keyboard_arrow_down</em>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>
