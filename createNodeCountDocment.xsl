<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <xsl:element name="Session.getDocumentRs">
            <xsl:attribute name="status">success</xsl:attribute>
            <xsl:copy-of select="//driver" />
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
