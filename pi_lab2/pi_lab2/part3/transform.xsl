<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Hotel Reservations</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
          }
          .reservation {
            border: 2px solid #2a75bb;
            background-color: #d9e8f5;
            border-radius: 8px;
            padding: 15px;
            margin: 10px auto;
            width: 300px;
            text-align: left;
          }
          .reservation h3 {
            margin: 0;
          }
        </style>
      </head>
      <body>
        <h1>Hotel Reservations</h1>
        <xsl:apply-templates select="reservations/reservation"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="reservation">
    <div class="reservation">
      <h3><xsl:value-of select="name"/></h3>
      <p><strong>Rooms:</strong> <xsl:value-of select="amountOfNumbers"/></p>
      <p><strong>Requirements:</strong> <xsl:value-of select="requirements"/></p>
      <p><strong>Duration:</strong> <xsl:value-of select="duration"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>
