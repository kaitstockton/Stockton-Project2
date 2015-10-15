<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="new 2.css"/>
</head>
<body>
<h1>My Video Game Collection</h1>
<table border="1">
    <tr>
      <th>ID</th>
      <th>Name</th>
	  <th>Release</th>
	  <th>Systems</th>
	  <th>Maturity Rating</th>
	  <th>Game Rating</th>
	  <th>Genre</th>
	  <th>Synopsis</th>
	  <th>Players</th>
	  <th>Related Games</th>
	  <th>Awards</th>
	  <th>Mods</th>
	  <th>Developer</th>
	  <th>Publisher</th>
    </tr>
	<xsl:for-each select="video_game_collection/video_game">
	<tr>
		<td><xsl:value-of select="id"/></td>
		<td><xsl:value-of select="name"/></td>
		<td><xsl:value-of select="release"/></td>
		<td><xsl:value-of select="systems"/></td>
		<td><xsl:value-of select="maturity_rating"/></td>
		<td><xsl:value-of select="game_rating"/></td>
		<td><xsl:value-of select="genre"/></td>
		<td><xsl:value-of select="synopsis"/></td>
		<td><xsl:value-of select="players"/></td>
		<td><xsl:value-of select="related_games"/></td>
		<td><xsl:value-of select="awards"/></td>
		<td><xsl:value-of select="mods"/></td>
		<td><xsl:value-of select="developer"/></td>
		<td><xsl:value-of select="publisher"/></td>
	</tr>
	</xsl:for-each>
	</table>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>