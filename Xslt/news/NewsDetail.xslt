<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="section detail-news-page">
            <div class="container">
                <div class="wrapper-container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="bottom-wrapper d-flex align-center justify-between">
                        <time>
                            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                        </time>
                        <ul class="social d-flex">
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                        <xsl:value-of select="FullUrl"/>
                                    </xsl:attribute>
                                    <em class="fab fa-facebook"></em>
                                    <span>Share</span>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:text>https://twitter.com/intent/tweet?url=</xsl:text>
                                        <xsl:value-of select="FullUrl"/>
                                    </xsl:attribute>
                                    <em class="fab fa-twitter"></em>
                                    <span>Tweet</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="fullcontent">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </section>
        <section class="section news-other" setBackground="/Data/Sites/1/skins/default/img/bg/newdetail.png">
            <div class="container">
                <div class="title color-main fw-600 f-30">Tin tức khác</div>
                <div class="slide-other-news">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide">
            <div class="swiper-inner d-flex">
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
                    <time class="f-14">
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </time>
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
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
