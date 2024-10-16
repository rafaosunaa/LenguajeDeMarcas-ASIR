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
    border-collapse:collapse;
    border:3px solid blue;

    }
    h3 {
    margin-left:7%;
    font-family:arial;
        
        }    
    </style>
<h3>Catálogo</h3>
<table>
<tr style="background-color:yellow"><th>DNI</th><th>Foto</th><th>Asignatura</th><th>Nota</th></tr>
<xsl:for-each select="calificacion/alumno">
<tr style="background-color:lightblue">
<td><xsl:value-of select="DNI"/></td>
<td><xsl:value-of select="foto"/></td>
<td><xsl:value-of select="asignatura"/></td>
<xsl:if test="nota>4">
<td style="color:green"><xsl:value-of select="nota"/></td>
    </xsl:if>
    <xsl:if test="nota &lt; 5">
<td style="color:red"><xsl:value-of select="nota"/></td>
    </xsl:if>
</tr>

</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>