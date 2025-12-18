<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <section class="w3-container w3-center">
            <xsl:for-each select="berriak/berria">
                <article class="w3-container w3-row w3-round-large w3-card-4 w3-padding-16 w3-margin">
                    <a href="{esteka}" target="_blank">
                        <img class="w3-image" src="irudiak/berriak/{irudia}" alt="Berriaren irudia"/>
                    </a>
                    <p><xsl:value-of select="deskribapena"></xsl:value-of></p>
                </article>
            </xsl:for-each>
        </section>
    </xsl:template>
</xsl:stylesheet>
