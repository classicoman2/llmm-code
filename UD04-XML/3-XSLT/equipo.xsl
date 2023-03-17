<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          * {
          font-family: Verdana;
          }
        </style>
      </head>
      <body>
        <h2>Mi equipo</h2>
        <table style="border: 1px solid black">
          <tr style="color:#9acd32; background-color:grey">
            <th>Jugador</th>
            <th>Puntos</th>
          </tr>
          <xsl:for-each select="equipo/jugador">
            <xsl:sort select="puntos" data-type="number" order="descending" />
            <tr>
              <td>
                <xsl:value-of select="nombre" />
              </td>
              <td>
                <xsl:value-of select="puntos" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>