<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="section detail-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="section-title color-main">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
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
                        <div class="full-content">
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                        <div class="wrapper-btn d-flex align-center">
                            <div class="apply text-uppercase">
                                <a href="javascript: ;">
                                    <xsl:attribute name="data-type">
                                        <xsl:text>iframe</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-fancybox">
                                        <xsl:text>Form ứng tuyển</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-src">
                                        <xsl:value-of select="ApplyUrl" disable-output-escaping="yes"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="Apply"></xsl:value-of>
                                    <xsl:text disable-output-escaping="yes">Ứng tuyển</xsl:text>
                                </a>
                            </div>
                            <span>Hoặc</span>
                            <div class="view text-uppercase">
                                <em class="material-icons">download</em>
                                <a href="">Tải mẫu đơn xin việc</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="recuirement-desc">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                        <div class="recuirement-other">
                            <div class="recuirement-header">
                                <div class="title f-24 fw-600 color-main">Vị trí khác</div>
                            </div>
                            <div class="recuirement-body">
                                <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="item">
            <time>
                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
            </time>
            <div class="title">
                <a>
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
    </xsl:template>
</xsl:stylesheet>
