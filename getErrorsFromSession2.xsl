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
                <!-- risk integrations -->
                <xsl:for-each select="//session/policy/line/risk">
                    <xsl:if test="boolean(./VinData/vinResponse/VinLookup.getVinLookupIndividualRs/VehicleData)">
                        <error>
                            <xsl:attribute name="type">vinlookup</xsl:attribute>
                            <xsl:value-of select="concat('Unable to locate VIN: ', ./VIN)"></xsl:value-of>
                        </error>
                    </xsl:if>
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
