<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <section class="section home-develop">
            <xsl:attribute name="setBackground">
                <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-6">
            <div class="wrapper-content">
                <div class="section-title color-main">
                    <xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
                </div>
                <div class="desc f-16">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
                <a class="btn btn-view-more-2" href="">
                    <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">/phat-trien-ben-vung</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">tìm hiểu thêm</xsl:text>
                    <em class="material-icons">arrow_forward</em>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
