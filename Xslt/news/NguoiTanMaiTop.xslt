<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="section-title color-main">
            <xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
        </div>
        <div class="category-specail">
            <div class="row">
                <div class="col-lg-6">
                    <xsl:apply-templates select="News[1]" mode="Big"></xsl:apply-templates>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <xsl:apply-templates select="News[position() &gt;1 and position() &lt;4]" mode="Small"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <div class="col-item-big zoom-img">
            <div class="big-img">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
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
                <a class="lcl lcl-2 fw-700 color-white">
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Small">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="col-item zoom-img">
                <div class="small-img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
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
                    <div class="icon">
                        <img src="/Data/Sites/1/skins/default/img/icon/photo.png" alt=""/>
                    </div>
                    <a class="lcl lcl-4 fw-700">
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
