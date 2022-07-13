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
		<div class="col-md-6 col-sm-6 col-lg-6">
			<div class="col-item zoom-img d-flex">
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
						<a class="lcl lcl-4 fw-700">
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
