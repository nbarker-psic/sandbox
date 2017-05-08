<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <Session.validatedAddress>
            <xsl:attribute name="count">
                <xsl:value-of select="count(//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow)"></xsl:value-of>
                <AddressLine1>
                    <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/AddressLine1"></xsl:value-of>
                </AddressLine1>
            </xsl:attribute>
        </Session.validatedAddress>
    </xsl:template>

</xsl:stylesheet>
