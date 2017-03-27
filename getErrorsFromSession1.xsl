<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <Session.errorsAndWarningsRs>
            <warnings></warnings>
            <errors>
                <xsl:for-each select="//session/messages/message">
                    <error>
                        <xsl:attribute name="type">
                            <xsl:value-of select="@flag"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="."></xsl:value-of>
                    </error>
                </xsl:for-each>
            </errors>
        </Session.errorsAndWarningsRs>
    </xsl:template>

</xsl:stylesheet>
