<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

<!--     <xsl:template match="extension">
        <xsl:copy>
            <nodeCounts>
                <interest><xsl:value-of select="count(//session/data/account/additionalOtherInterest)"></xsl:value-of></interest>
                <risk><xsl:value-of select="count(//session/data/policy/line/risk)"></xsl:value-of></risk>
                <violation><xsl:value-of select="count(//session/data/policy/line/violation)"></xsl:value-of></violation>
                <driver><xsl:value-of select="count(//session/data/policy/line/driver)"></xsl:value-of></driver>
            </nodeCounts>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template> -->

</xsl:stylesheet>
