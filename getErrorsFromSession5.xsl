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

                <!-- integration errors -->
                <xsl:if test="boolean(//_psicPortalIntegration/integrations/vDoIntegrationAddress[.=1])">
                    <!-- integration: address -->
                    <xsl:if test="not(boolean(//_psicPortalIntegration/validatedAddress/Confidence[.=100]))">
                        <error>
                            <xsl:attribute name="type">integration</xsl:attribute>
                            <xsl:text>The supplied mailing address is not valid.  Please request assistance from customer service.</xsl:text>
                        </error>
                    </xsl:if>
                </xsl:if>

                <xsl:if test="boolean(//_psicPortalIntegration/integrations/vDoIntegrationCreditScore[.=1])">
                    <!-- integration: creditscore -->
                </xsl:if>

                <!-- integration: vin -->
                <xsl:if test="boolean(//_psicPortalIntegration/integrations/vDoIntegrationVIN[.=1])">
                    <xsl:for-each select="//session/data/policy/line/risk">
                        <xsl:if test="not(boolean(./VinData/vinResponse/VinLookup.getVinLookupIndividualRs/VehicleData))">
                            <error>
                                <xsl:attribute name="type">integration</xsl:attribute>
                                <xsl:text>Vehicle data could not be retrieved based on the VIN that was provided.  Please request assistance from customer service.</xsl:text>
                            </error>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>

                <!-- integration: mvr -->
                <xsl:if test="boolean(//_psicPortalIntegration/integrations/vDoIntegrationMVR[.=1])">
                    <xsl:for-each select="//_ADRData/ADRResponse/ADR.getADRRs">
                        <xsl:if test="not(boolean(./GetMotorVehicleReportResponseMessageType/MessageHeader/StatusMessage[.='SUCCESS']))">
                            <error>
                                <xsl:attribute name="type">integration</xsl:attribute>
                                <xsl:text>Driver history data could not be retrieved.  Please request assitance from customer service.</xsl:text>
                            </error>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:if>
            </errors>
        </Session.errorsAndWarningsRs>
    </xsl:template>

</xsl:stylesheet>
