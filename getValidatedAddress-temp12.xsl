<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="boolean(//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]) and boolean(//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/Confidence[.=100])">
                <validatedAddress>
                    <Confidence>
                        <xsl:value-of select="//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/Confidence"></xsl:value-of>
                    </Confidence>
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
        <!--             <ValidateCounty>
                        <xsl:value-of select="replace(//_IntegrationData/geocodeResponse/ArrayOfAddressRow/AddressRow[1]/County, ' County', '')"></xsl:value-of>
                    </ValidateCounty> -->
                </validatedAddress>
            </xsl:when>
            <xsl:otherwise>
                <validatedAddress>
                    <Confidence>0</Confidence>
                    <AddressLine1/>
                    <AddressLine2/>
                    <City/>
                    <StateProvince/>
                    <PostalCode/>
                    <County/>
                </validatedAddress>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
