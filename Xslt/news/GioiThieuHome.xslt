<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<div class="row">
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-5 col-md-5 col-sm-6">
			<div class="wrapper-content">
				<div class="section-title color-main">
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</div>
				<div class="content f-16 color-text">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
				</div>
				<a class="btn btn-view-more" href="">
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="../ShowmoreTxt"></xsl:value-of>
				</a>
			</div>
		</div>
		<div class="col-lg-7 col-md-7 col-sm-6">
			<div class="img">
				<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
