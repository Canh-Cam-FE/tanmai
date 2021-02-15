<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductList">
        <div class="wrapper-big-img">
            <div class="row">
                <div class="col-lg-6">
                    <xsl:apply-templates select="Product[1]" mode="Big"></xsl:apply-templates>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <xsl:apply-templates select="Product[position() &gt; 1 and position() &lt; 4]" mode="Smal1"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper-small-img">
            <div class="row">
                <xsl:apply-templates select="Product[position() &gt; 3]" mode="Small2"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="Big">
        <div class="col-big zoom-img">
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
            <div class="content fw-700 f-18">
                <a>
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
    <xsl:template match="Product" mode="Smal1">
        <div class="col-lg-12 col-md-6">
            <div class="col-small zoom-img d-flex">
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
                <div class="content fw-700 f-18">
                    <a>
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
    <xsl:template match="Product" mode="Small2">
        <div class="col-lg-4 col-md-6">
            <div class="small-img zoom-img">
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
                <div class="content fw-700 f-18">
                    <a>
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
