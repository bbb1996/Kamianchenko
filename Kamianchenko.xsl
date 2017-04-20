<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Nacesty</h1>
        <h2>
          <b>
            <i>Hlavni nabidka</i>
          </b>
        </h2>
        <!--Zakladni polozky-->
        <big>
          <li>
            <xsl:value-of select="Nacesty/hlavni_stranka/mapa/poloha/ulice/@nazev"/>
            <br/>
            <li>
              <xsl:value-of select="Nacesty/hlavni_stranka/volba/@cil"/>
              <br/>
              <li>
                <xsl:value-of select="Nacesty/hlavni_stranka/volba/cil/@historie"/>
                <br/>
                <li>
                  <xsl:value-of select="Nacesty/hlavni_stranka/oznameni/@text"/>
                  <br/>
                </li>
              </li>
            </li>
          </li>
        </big>
        <!--Nastaveni aplikaci-->
        <h2>
          <b>
            <i>Volba nastaveni</i>
          </b>
        </h2>
        <table border="1" style="font:18px verdana">
          <tr bgcolor="yellow">
            <th>Zakladni nastaveni</th>
            <th>Automaticky</th>
            <th>Vyber</th>
          </tr>
          <xsl:for-each select="Nacesty/nastaveni">
            <tr>
              <td>Jazyk</td>
              <td>
                <xsl:value-of select="obecne/rec/@automat"/>
              </td>
              <td>
                <xsl:value-of select="obecne/rec/hlas_aplikaci"/>
              </td>
            </tr>
            <tr>
              <td>Jednotky mereni</td>
              <td>
                <xsl:value-of select="obecne/jednotky/@mereni"/>
              </td>
              <td>
                <xsl:value-of select="obecne/jednotky/varianty"/>
              </td>
            </tr>
            <xsl:if test="position() != last()">,</xsl:if>
          </xsl:for-each>
        </table>
        <!--Planovani cesty-->
        <h2>
          <b>
            <i>Planovani cesty</i>
          </b>
        </h2>
        <xsl:for-each select="Nacesty/navigace/planovani">
          <big>
            <i>
              <b>Odkud:</b>
            </i>
            <xsl:value-of select="poloha"/>
          </big>
          <br/>
          <big>
            <i>
              <b>Kam:</b>
            </i>
            <xsl:value-of select="konec"/>
          </big>
          <h3>Volba rezimu</h3>
          <big>
            <ul>
              <u>
                <b>
                  <xsl:value-of select="rezim/@auto"/>
                </b>
              </u>
              <li>
                <xsl:value-of select="rezim/poplatek"/>
                <br/>
              </li>
              <li>
                <xsl:value-of select="rezim/magistrala"/>
                <br/>
              </li>
              <li>
                <xsl:value-of select="rezim/privoz"/>
                <br/>
              </li>
            </ul>
            <ul>
              <u>
                <b>
                  <xsl:value-of select="rezim/@pesky"/>
                </b>
              </u>
            </ul>
          </big>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
