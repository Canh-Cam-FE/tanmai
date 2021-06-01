<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="section about">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                    </div>
                    <div class="wrapper-list d-flex align-center">
                        <xsl:apply-templates select="News[position() &gt;0 and position() &lt;4]" mode="ListTop">
                        </xsl:apply-templates>
                    </div>
                    <div class="wrapper-content">
                        <div class="row">
                            <xsl:apply-templates select="News[4]" mode="GioiThieu"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section history">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                    </div>
                </div>
                <div class="block-slide">
                    <div class="swiper-container gallery-top">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News" mode="HistoryTop"></xsl:apply-templates>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                    <div class="container">
                        <div class="swiper-container gallery-thumbs">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="HistoryThumb"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section mission">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="wrapper-content">
                        <xsl:attribute name="setBackground">
                            <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Looking"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="section corevalues">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="image-map-wrapper">
                        <div id="map">
                            <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="usemap">
                                <xsl:text disable-output-escaping="yes">#image-map</xsl:text>
                            </xsl:attribute>
                            </img>
                        </div>
                        <map>
							<xsl:attribute name="name">image-map</xsl:attribute>
							<xsl:apply-templates select="News" mode="GiaTri"></xsl:apply-templates>
						</map>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 5">
            <section class="section organizational-chart">
                <xsl:attribute name="setBackground">
                    <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="image-wrapper">
                        <xsl:apply-templates select="News" mode="SoDo"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <section class="section capacity">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="container--tabs">
                        <div class="top">
                            <ul class="nav nav-tabs">
                                <xsl:apply-templates select="News" mode="List"></xsl:apply-templates>
                            </ul>
                            <div class="statistical-box">
                                <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                            </div>
                        </div>
                        <div class="tab-content">
                            <xsl:apply-templates select="News" mode="Content"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 7">
            <section class="section member">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="setBackground">
                    <xsl:value-of disable-output-escaping="yes" select="IamgeUrl"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="section-title color-main">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </div>
                            <div class="content">
                                <ul>
                                    <xsl:apply-templates select="News" mode="Member"></xsl:apply-templates>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="img">
                                <img class="lazyload">
                                <xsl:attribute name="data-src">
                                    <xsl:value-of select="SecondImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                </img>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 8">
            <section class="section prize">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="wrapper-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="content">
                                    <ul>
                                        <xsl:apply-templates select="News" mode="ThanhTich_Content">
                                        </xsl:apply-templates>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="box-img">
                                    <xsl:apply-templates select="News" mode="ThanhTich_Image">
                                    </xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="ListTop">
        <div class="item d-flex align-center">
            <div class="img">
                <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
            <div class="content">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                <div class="desc">
                    <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="GioiThieu">
        <div class="col-lg-5 col-md-6">
            <div class="content">
                <div class="desc">
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </div>
        <div class="col-lg-7 col-md-6">
            <div class="img">
                <img class="lazyload">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="HistoryTop">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <div class="img">
                    <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="content">
                    <div class="title text-center color-main fw-700">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="desc text-center f-16">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="HistoryThumb">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <div class="title f-20 fw-700 color-gray text-center">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Looking">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="content text-center">
                <div class="section-title color-white">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="desc color-white">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="GiaTri">
        <area>
        <xsl:attribute name="data-fancybox">
            <xsl:text disable-output-escaping="yes">popup</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="data-src">
            <xsl:text disable-output-escaping="yes">#image-map-popup-</xsl:text>
            <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="href">
            <xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
        </xsl:attribute>
        <xsl:attribute name="coords">
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="shape">
            <xsl:text disable-output-escaping="yes">circle</xsl:text>
        </xsl:attribute>
        </area>
        <div class="image-map-popup">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">image-map-popup-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="title text-uppercase f-30 fw-600 color-main">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="desc">
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="SoDo">
        <a href="javascript: ;" data-fancybox="chart">
            <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
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
    </xsl:template>
    <xsl:template match="News" mode="List">
        <li>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#tab-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="News" mode="Content">
        <div class="wrap-content tab-pane">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">wrap-content tab-pane active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>wrap-content tab-pane active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="row">
                <div class="col-lg-6">
                    <div class="img">
                        <img class="lazyload">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="content">
                        <div class="title text-uppercase color-text f-24 fw-700">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Member">
        <li>
            <p>
                <strong>
					<xsl:text disable-output-escaping="yes">0</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</strong>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </li>
    </xsl:template>
    <xsl:template match="News" mode="ThanhTich_Content">
        <li>
            <p>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </p>
        </li>
    </xsl:template>
    <xsl:template match="News" mode="ThanhTich_Image">
        <div class="img">
            <img class="lazyload">
            <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            </img>
        </div>
    </xsl:template>
</xsl:stylesheet>
