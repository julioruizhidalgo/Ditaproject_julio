<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:strip-space elements="*"/>


    <xsl:template match="/">
        <table border="1">
            <tr bgcolor="#9acd32">
                <th> Trip Names</th>
                <th> N. Customers</th>
            </tr>

            <xsl:for-each select="Agency_report/body/Finance_Report/fullSeason/trip">
                <tr>
                    <td>
                        <xsl:apply-templates select="@tripname"/>
                    </td>
                    <td>
                        <xsl:apply-templates select= "count(customer)"></xsl:apply-templates>
                    </td>
                </tr>

            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
