<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<ul>
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</ul>
		<a class="btn btn-view-more" href="">
			<xsl:attribute name="href">
				<xsl:text disable-output-escaping="yes">/quan-he-co-dong</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="ShowAllTxt"></xsl:value-of>
		</a>
	</xsl:template>
	<xsl:template match="News">
		<li>
			<div class="item-header d-flex align-center">
				<div class="title f-12 color-white">
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</div>
				<time>
					<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
				</time>
			</div>
			<div class="item-body d-flex">
				<div class="desc lcl lcl-2 f-14 fw-500 line-20">
					<a target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="FileUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="download">
					</xsl:attribute>
					<em class="material-icons">file_download</em>
				</a>
			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>
