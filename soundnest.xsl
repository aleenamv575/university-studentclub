<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<HTML>
<HEAD> <TITLE>SOUND NEST</TITLE>
</HEAD>
<BODY style="background-color:#003153;color:white">
<xsl:apply-templates/>

</BODY>
</HTML>


</xsl:template>
<xsl:template match="soundnest">
<h1 style="text-align:center;font-size:40px">SOUND NEST</h1>
<img style="background-color:white" src="soundcurry.jpg"  align="right" width="700px;height:700px"/>
<img style="background-color:white" src="mag.jpg" align="middle"  width="700px;height:1000px"/>
<img style="background-color:white" src="bob.jpg" align="right" width ="700px;height:1000px"/>
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="modules">
	<xsl:apply-templates select="title"/>
	<p style="text-align:center;"><b>SOUND NEST EVENT DETAILS</b></p>
<table cellpadding="4" border="1" width="600" style="margin-left: auto;
  margin-right: auto;" >
		<tr>
			<th>CLUB ID</th>
			<th>EVENT NAME</th>
			<th>MEMBERS COUNT</th>
			<th>PARTICIPANTS COUNT</th>
			<th>YEAR</th>
			
		
		</tr>	
	
			<xsl:for-each select="club">	
	    <xsl:if test="@participantscount>5">
			<tr>
				<td><xsl:value-of select="@id"/></td>
				<td><xsl:value-of select="@eventname"/></td>
				<td><xsl:value-of select="@MemberCount"/></td>
				<td><xsl:value-of select="@participantscount"/></td>
				<td><xsl:value-of select="@year"/></td>
				
			</tr>	
	    </xsl:if>	
	</xsl:for-each>
	</table>

<xsl:apply-templates/>
</xsl:template>
<xsl:template match="s">
		<html>
			<head>
				<style>
				h1 {
					text-align:center;
				}
				</style>
			</head>
			<body>
				<h1>SOUND NEST MEMBER DETAILS</h1>
				<table border="2" align="center">
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>EMAIL</th>
						<th>PHONE NUMBER</th>
						<th>REASON FOR JOINING THE CLUB</th>
						
						
					</tr>
		
					<xsl:for-each select="student">
						<tr>
						<td>
						<xsl:value-of select="id"/>
						</td>
						<td>
						<xsl:value-of select="name"/>
						</td>
						<td>
						<xsl:value-of select="email"/>
						</td>
						<td>
						<xsl:value-of select="phone"/>
						</td>
                        <td>
						<xsl:value-of select="reason"/>
						</td>
                        
					
						</tr>
					</xsl:for-each>
					
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>




