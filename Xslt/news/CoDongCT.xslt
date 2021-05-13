<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="silde-wrapper tab-panel">
            <div class="swiper-container tabs">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="Zone" mode="Slide"></xsl:apply-templates>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <xsl:apply-templates select="Zone" mode="Content"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Slide">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <xsl:if test="position() = 6">
                    <xsl:attribute name="class">
                        <xsl:text>swiper-inner active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>swiper-inner active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="data-href">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="desc f-24 fw-700 color-gray-2">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
                <div class="dot"> </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Content">
        <div class="panel">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 6">
                <xsl:attribute name="class">
                    <xsl:text>panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="wrapper-column">
                <div class="swiper-container column">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="Panel"></xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Panel">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <div class="item d-flex">
                    <div class="img">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="FileUrl"></xsl:value-of>
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
                        <time class="f-12">
                            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                        </time>
                        <div class="title f-14">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of disable-output-escaping="yes" select="FileUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="FileUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="download"></xsl:attribute>
                            <em class="material-icons">download</em>
                            <xsl:text disable-output-escaping="yes">Tải về</xsl:text>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
