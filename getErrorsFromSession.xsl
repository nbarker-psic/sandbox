<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <sessionErrorsAndWarnings>
            <warnings></warnings>
            <errors></errors>
<!--             <interest><xsl:value-of select="count(//session/data/account/additionalOtherInterest)"></xsl:value-of></interest>
            <risk><xsl:value-of select="count(//session/data/policy/line/risk)"></xsl:value-of></risk>
            <violation><xsl:value-of select="count(//session/data/policy/line/violation)"></xsl:value-of></violation>
            <driver><xsl:value-of select="count(//session/data/policy/line/driver)"></xsl:value-of></driver> -->
        </sessionErrorsAndWarnings>
    </xsl:template>

</xsl:stylesheet>
