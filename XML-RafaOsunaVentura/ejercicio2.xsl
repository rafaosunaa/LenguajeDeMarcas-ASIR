<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
    <style>
        body {
        margin-left:10%
        }
    table,tr,td,th {
    
    border:2px solid blue;
        border-collapse:collapse;
    }
    </style>
<h3>Catálogo</h3>
<table>
<tr><th>Nombre</th><th>Precio</th><th>Unidad</th></tr>
<xsl:for-each select="catalogo/pieza">
<xsl:choose>
    <xsl:when test="position() mod 2 = 0">
<tr style="background-color:lightgrey">
<td><xsl:value-of select="nombre"/></td>
<td><xsl:value-of select="precio"/></td>
<td><xsl:value-of select="unidad"/></td>
<td><img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img></td>
</tr>
</xsl:when>
<xsl:otherwise>
<tr style="background-color:aliceblue">
<td><xsl:value-of select="nombre"/></td>
<td><xsl:value-of select="precio"/></td>
<td><xsl:value-of select="unidad"/></td>
<td><img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img></td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>