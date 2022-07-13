<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/ZoneList">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="wrapper-content">
					<div class="section-title color-main">
						<xsl:value-of disable-output-escaping="yes" select="Zone/Title"></xsl:value-of>
					</div>
					<div class="desc f-16 color-text">
						<xsl:value-of disable-output-escaping="yes" select="Zone/Description"></xsl:value-of>
					</div>
					<a class="btn btn-view-more" href="">
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="Zone/Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of disable-output-escaping="yes" select="Zone/Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="ShowAllTxt"></xsl:value-of>
					</a>
				</div>
			</div>
			<xsl:apply-templates select="Zone/Product"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<xsl:if test="position() = 1">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="item-project zoom-img">
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
						<div class="title f-18 fw-700 color-text">
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
			</div>
		</xsl:if>
		<xsl:if test="position() != 1">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="item-project zoom-img">
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
						<div class="title f-18 fw-700 color-text">
							<a class="lcl lcl-1">
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
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
