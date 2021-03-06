<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="CSS.css"/>
</head>
<body>
<h1>My Video Game Collection</h1>
<table id="myTable" border="1">
<thead>
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
	  <th>DLCs</th>
	  <th>Mods</th>
	  <th>Developer</th>
	  <th>Publisher</th>
    </tr>
</thead>
<tbody>
	<xsl:for-each select="video_game_collection/video_game">
	<tr>
		<td><xsl:value-of select="id"/></td>
		<td><xsl:value-of select="name"/></td>
		<td><xsl:value-of select="release"/></td>
		<td><xsl:value-of select="systems"/></td>
		<td><xsl:value-of select="maturity_rating"/></td>
	<xsl:for-each select="game_rating">
		<td>
		<ul>
	<xsl:for-each select="rater">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>
	<xsl:for-each select="genre">
		<td>
		<ul>
	<xsl:for-each select="genre_type">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>
		<td><xsl:value-of select="synopsis"/></td>
	<xsl:for-each select="players">
	<td>
		<ul>
	<xsl:for-each select="number_of_players">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>
	<xsl:for-each select="related_games">
	<td>
		<ul>
	<xsl:for-each select="related_game">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>	
	<xsl:for-each select="awards">
	<td>
		<ul>
	<xsl:for-each select="award_type">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>	
	<xsl:for-each select="DLC">
		<td>
		<ul>
	<xsl:for-each select="DLC_type">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>		
	<xsl:for-each select="mods">
	<td>
		<ul>
	<xsl:for-each select="mod_type">
		<li><xsl:value-of select="."/></li> 
	</xsl:for-each>
		</ul>
		</td>
	</xsl:for-each>	
		<td><xsl:value-of select="developer"/></td>
		<td><xsl:value-of select="publisher"/></td>
	</tr>
	</xsl:for-each>
</tbody>
	</table>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>