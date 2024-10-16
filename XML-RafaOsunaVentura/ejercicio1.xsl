<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>  
</head>    
<body>
<style>
table,tr,td {
border: 8px solid lightblue;
border-collapse:collapse;
    }    
th {
background-color: red;    
    
    }
    h1{
    margin-left:7%;
    }
    
    
</style>  
<h1><u>Alumnos</u></h1>
<table>
<tr><th>Dni</th>
<th>Nombre</th>   
<th>Apellidos</th>
<th>Edad</th></tr>
<xsl:for-each select="personas/alumno">
<tr>
<td><xsl:value-of select="dni"/></td>
<td><xsl:value-of select="nombre"/></td>      
<td><xsl:value-of select="apellidos"/></td>   
<td><xsl:value-of select="edad"/></td>   
</tr>
    
    
</xsl:for-each>
    
    
    
</table>    
    
    
    
    
    
        
</body>
</html>    
</xsl:template>
</xsl:stylesheet>