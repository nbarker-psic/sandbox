<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <validatedAddress>
            <Count>
                <xsl:value-of select="count(//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow)"></xsl:value-of>
            </Count>
            <AddressLine1>
                <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/AddressLine1"></xsl:value-of>
            </AddressLine1>
            <AddressLine2>
                <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/AddressLine2"></xsl:value-of>
            </AddressLine2>
            <City>
                <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/City"></xsl:value-of>
            </City>
            <StateProvince>
                <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/StateProvince"></xsl:value-of>
            </StateProvince>
            <PostalCode>
                <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/PostalCode"></xsl:value-of>
            </PostalCode>
            <County>
                <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/County"></xsl:value-of>
            </County>
        </validatedAddress>
    </xsl:template>

</xsl:stylesheet>
