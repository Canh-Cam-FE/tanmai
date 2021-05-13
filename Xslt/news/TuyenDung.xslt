<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="section recruit-desc">
                <div class="container">
                    <div class="section-title color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Frame-1"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section recruit-list" setBackground="/Data/Sites/1/skins/default/img/bg/vitrituyendung.png">
                <div class="container">
                    <div class="tab-container">
                        <div class="wrapper-top d-flex align-center justify-between">
                            <div class="section-title color-main">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </div>
                            <div class="wrapper-filter d-flex align-center">
                                <div class="text f-12 fw-500">Lọc theo tên Công ty/ Chi nhánh </div>
                                <select id="select-box">
                                    <xsl:apply-templates select="Zone" mode="SubZone"></xsl:apply-templates>
                                </select>
                            </div>
                        </div>
                        <xsl:apply-templates select="Zone" mode="SubContent"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Frame-1">
        <div class="col-lg-6">
            <div class="wrapper-content">
                <div class="desc">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </div>
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
    </xsl:template>
    <xsl:template match="Zone" mode="SubZone">
        <option value="tab-1">
            <xsl:attribute name="mytag">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </option>
    </xsl:template>
    <xsl:template match="Zone" mode="SubContent">
        <div class="tab-content">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>tab-content active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-content active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div id="table">
                <table>
                    <thead>
                        <tr>
                            <th>stt </th>
                            <th>vị trí tuyển dụng </th>
                            <th>số lượng</th>
                            <th>ngày đăng </th>
                            <th>ngày hết hạn</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="News" mode="DeskTop"></xsl:apply-templates>
                    </tbody>
                </table>
            </div>
            <div class="list-mobile">
                <div class="row">
                    <xsl:apply-templates select="News" mode="Mobile"></xsl:apply-templates>
                </div>
            </div>
            <a class="load-more" href="javascript: ;">
                <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                <em class="material-icons">arrow_downward</em>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="DeskTop">
        <tr>
            <td>
                <xsl:if test="position() &lt; 10">
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:if>
                <xsl:if test="position() &gt;9">
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:if>
            </td>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="item">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
                <p>
                    <em class="mdi mdi-account-group"></em>
                    <span>Số lượng:
                        <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-start"></em>
                    <span>Ngày bắt đầu:
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-end"></em>
                    <span>Ngày hết hạn:
                        <xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
                    </span>
                </p>
                <div class="btn-view">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
