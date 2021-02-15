<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <section class="section shareholder">
            <div class="container">
                <div class="section-title color-main">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
                <div class="wrapper-content">
                    <div class="row">
                        <xsl:apply-templates select="Zone" mode="Top"></xsl:apply-templates>
                    </div>
                </div>
                <div class="wrapper-content">
                    <div class="row">
                        <xsl:apply-templates select="Zone" mode="Bottom"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="Top">
        <xsl:if test="position() = 1">
            <div class="col-lg-8">
                <div class="col-left">
                    <div class="title f-24 fw-700 text-uppercase color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="content d-flex">
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
                        <div class="list">
                            <ul>
                                <xsl:apply-templates select="News" mode="CongBo"></xsl:apply-templates>
                            </ul>
                            <div class="detail">
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:text disable-output-escaping="yes">xem chi tiết</xsl:text>
                                </a>
                                <em class="material-icons">arrow_forward</em>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 4">
            <div class="col-lg-4">
                <div class="col-right">
                    <div class="title f-24 fw-700 text-uppercase color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="list-item">
                        <xsl:apply-templates select="News" mode="SuKien"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Bottom">
        <xsl:if test="position() = 2">
            <div class="col-lg-8">
                <div class="col-left">
                    <div class="title f-24 fw-700 text-uppercase color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="content d-flex">
                        <div class="img">
                            <a href="bao-cao-tai-chinh.html">
                                <img class="lazyload" data-src="./img/quan-he-co-dong/i-1.png" alt=""/>
                            </a>
                        </div>
                        <div class="list">
                            <ul>
                                <li>
                                    <div class="icon">
                                        <img src="./img/icon/pdf.png" alt=""/>
                                    </div>
                                    <div class="text">
                                        <a href="">Chương trình đại hội đồng cổ đông thường niên năm 2020</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon">
                                        <img src="./img/icon/pdf.png" alt=""/>
                                    </div>
                                    <div class="text">
                                        <a href="">Chương trình đại hội đồng cổ đông thường niên năm 2020</a>
                                    </div>
                                </li>
                            </ul>
                            <div class="detail">
                                <a href="bao-cao-tai-chinh.html">xem chi tiết </a>
                                <em class="material-icons">arrow_forward</em>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="col-lg-4">
                <div class="col-right">
                    <div class="title f-24 fw-700 text-uppercase color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="list-item contact">
                        <ul>
                            <li>
                                <em class="material-icons">room</em>
                                <p>
                                    <strong>Địa chỉ: </strong>Đường số 11, Khu Công Nghiệp Biên Hòa I, Phường An Bình, TP Biên Hòa, Tỉnh Đồng Nai, Việt Nam
                                </p>
                            </li>
                            <li>
                                <em class="material-icons">call</em>
                                <p>
                                    <strong>Điện thoại: </strong>061.3836201
                                </p>
                            </li>
                            <li>
                                <em class="material-icons">print</em>
                                <p>
                                    <strong>Fax: </strong>061.3836231
                                </p>
                            </li>
                            <li>
                                <em class="material-icons">mail</em>
                                <p>
                                    <strong>Email: </strong>contact@tanmaigroup.com
                                </p>
                            </li>
                        </ul>
                        <div class="detail">
                            <a href="thong-tin-lien-he.html">xem chi tiết </a>
                            <em class="material-icons">arrow_forward</em>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="CongBo">
        <li>
            <div class="icon">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="text">
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
        </li>
    </xsl:template>
    <xsl:template match="News" mode="SuKien">
        <div class="item">
            <xsl:attribute name="data-fancybox">
                <xsl:text disable-output-escaping="yes">popup</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="data-src">
                <xsl:text disable-output-escaping="yes">#popup-event-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="date">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </div>
            <div class="content text-capitalize fw-500">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </div>
        </div>
        <div class="popup-event">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">popup-event-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="wrapper-content">
                <div class="title f-30 fw-600 color-main text-uppercase">thông tin sự kiện</div>
                <div class="item">
                    <div class="date">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <div class="text text-capitalize fw-500 f-18 color-main">
                        <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    </div>
                </div>
                <div class="content">
                    <p>Nội dung </p>
                    <div class="desc">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
