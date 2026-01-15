<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <section class="w3-card-4 w3-container w3-round-large Sailkapena">
            <h2>Sailkapena</h2>
            <article>
                <table class="sailkapenaTabla">
                    <thead>
                        <th>Posisioa</th>
                        <th>Taldea</th>
                        <th>Puntuak</th>
                        <th>Aldelko Golak</th>
                        <th>Kontrako Golak</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="taldeak/taldea">

                        <!-- Sailkapena ordenatseko -->
                        <xsl:sort select="ligako_puntuak" data-type="number" order="descending"></xsl:sort>
                        <xsl:sort select="aldeko_golak-kontrako_golak" data-type="number" order="descending"></xsl:sort>
                        <xsl:sort select="aldeko_golak" data-type="number" order="descending"></xsl:sort>
                        <xsl:sort select="kontrako_golak" data-type="number" order="ascending"></xsl:sort>
                        <xsl:sort select="izena" order="ascending"></xsl:sort>

                            <tr>
                                <td class="posisioa">
                                    <h1><xsl:value-of select="position()"/>.</h1>
                                </td>
                                <td class="w3-container sailkapen_talde">
                                    <img src="irudiak/eskutua/{irudia}" alt="Eskutua" />
                                    <xsl:value-of select="izena" />
                                </td>
                                <td>
                                    <xsl:value-of select="ligako_puntuak"/>
                                </td>
                                <td>
                                    <xsl:value-of select="aldeko_golak"/>
                                </td>
                                <td>
                                    <xsl:value-of select="kontrako_golak"/>
                                </td>
                            </tr>

                        </xsl:for-each>
                    </tbody>

                </table>

            </article>
        </section>
    </xsl:template>
</xsl:stylesheet>