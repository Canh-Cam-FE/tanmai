<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="video-slide">
            <div class="swiper-container gallery-top">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News" mode="Top"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-container gallery-thumbs">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News" mode="Thumbs"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Top">
        <div class="swiper-slide">
            <div class="slide-inner">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">popup-video</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="content color-white">
                    <img src="/Data/Sites/1/skins/default/img/icon/video.png" alt=""/>
                    <div class="desc">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Thumbs">
        <div class="swiper-slide">
            <div class="slide-inner">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">popup</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="content">
                    <img src="/Data/Sites/1/skins/default/img/icon/video.png" alt=""/>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
