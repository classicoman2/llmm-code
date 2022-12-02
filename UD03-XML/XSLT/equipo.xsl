<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Mi equipo</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Juhador</th>
            <th>Puntos</th>
          </tr>
          <xsl:for-each select="equipo/jugador">
            <tr>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="puntos"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>