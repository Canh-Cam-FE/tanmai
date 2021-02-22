<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="section-title color-main">
            <xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
        </div>
        <div class="row">
            <xsl:apply-templates select="News"></xsl:apply-templates>
            <a class="btn btn-view-more" href="">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">/tin-tuc-1</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:text disable-output-escaping="yes">xem tất cả</xsl:text>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="item-news zoom-img">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="img">
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
                    </div>
                    <div class="col-lg-6">
                        <div class="content">
                            <time>
                                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                            </time>
                            <a class="lcl lcl-4 f-16 fw-700">
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
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
