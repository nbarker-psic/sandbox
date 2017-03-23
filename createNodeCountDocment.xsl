<?xml version='1.0'?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	version="1.0">
	<xsl:output omit-xml-declaration="yes" />

	<xsl:template match="OnlineData.listMRURs">
		<!-- copy the first element along with it's attributes -->
		<xsl:copy>
			<xsl:apply-templates select="@*" mode="getAttributes" />
			<!-- Run the template for the policies element -->
			<xsl:apply-templates select="policies" />
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="policies">
		<!-- copy the policies element. Add an attribute to it -->
		<xsl:copy>
			<xsl:attribute name="count"><xsl:value-of select="count(/OnlineData.listMRURs/policies/policy)"/></xsl:attribute>
			<!-- run the template for all policy elements -->
			<xsl:apply-templates select="policy"/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="policy">
		<!-- exact copy (including children) of each policy element -->
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="@*" mode="getAttributes">
		<!-- this returns all the attributes that currently exist (and strips namespaces if they exist) -->
		<xsl:attribute name="{name()}" namespace="">
			<xsl:value-of select="." />
		</xsl:attribute>
	</xsl:template>
	
	<xsl:template match="*"/>
	<!-- this is a "just in case" that keeps any thing we haven't defined a template for from messing things up -->
	
</xsl:stylesheet>
