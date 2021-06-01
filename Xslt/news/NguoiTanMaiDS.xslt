<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <div class="category-section">
                <div class="wrapper-header d-flex align-center justify-between">
                    <div class="title text-uppercase color-white fw-700">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="wrapper-buttom d-flex align-center color-main">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                        </a>
                        <em class="material-icons">navigate_next</em>
                    </div>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="Tin"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="category-section">
                <div class="wrapper-header d-flex align-center justify-between">
                    <div class="title text-uppercase color-white fw-700">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="wrapper-buttom d-flex align-center color-main">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                        </a>
                        <em class="material-icons">navigate_next</em>
                    </div>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="Hinh"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="category-section">
                <div class="wrapper-header d-flex align-center justify-between">
                    <div class="title text-uppercase color-white fw-700">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="wrapper-buttom d-flex align-center color-main">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                        </a>
                        <em class="material-icons">navigate_next</em>
                    </div>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News" mode="Video"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Tin">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="col-item zoom-img">
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
                <div class="content">
                    <div class="title">
                        <a class="lcl lcl-2 fw-700">
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
    </xsl:template>
    <xsl:template match="News" mode="Hinh">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="col-item zoom-img">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
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
                    <div class="icon">
                        <img src="/Data/Sites/1/skins/default/img/icon/photo.png" alt="" />
                    </div>
                </div>
                <div class="content">
                    <div class="title">
                        <a class="lcl lcl-2 fw-700">
                            <xsl:attribute name="data-fancybox">
                                <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
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
    </xsl:template>
    <xsl:template match="News" mode="Video">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="col-item zoom-img">
                <div class="img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="data-fancybox">
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
                    <div class="icon">
                        <img src="/Data/Sites/1/skins/default/img/icon/video.png" alt="" />
                    </div>
                </div>
                <div class="content">
                    <div class="title">
                        <a class="lcl lcl-2 fw-700">
                            <xsl:attribute name="href">
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="data-fancybox">
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
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
    </xsl:template>
</xsl:stylesheet>
