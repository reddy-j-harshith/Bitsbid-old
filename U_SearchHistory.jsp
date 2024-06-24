<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Throughout 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20100423

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Search History..</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.slidertron-0.1.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
@import "slidertron.css";
.style1 {
	font-size: 23px;
	font-weight: bold;
	color: #00FF00;
}
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style35 {font-size: 25px}
.style15 {color: #f69722;
	font-size: 13px;
}
.style39 {color: #FF9900}
.style40 {font-size: 13px}
.style41 {color: #FFFFFF; }
.style42 {
	color: #FF0000;
	font-weight: bold;
}
</style>
</head>
<body>
<!-- end #header-wrapper -->
<div class="style1" id="logo">
		<font color=black>BITS-BID</font></div>
<div id="header">
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="UserMain.jsp"> User Home </a></li>
			<li><a href="index.html">Log Out</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="search">
		<form method="get" action="">
			<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
			</fieldset>
		</form>
	</div>
	<!-- end #search -->
</div>
<!-- end #header -->
<hr />
<!-- end #logo -->

<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">User</span> <span class="style23"><%=(String)application.getAttribute("uname")%><span class="style30">'s</span></span> <span class="style30">Search History </span></span><span class="style30">..</span></span></a></h2>
			    <div class="entry">
			      <table width="580" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="53" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style8 style7 style39 style40"><strong>Si No.</strong></div></td>
                      <td  width="125" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style8 style7 style39 style40"><strong>Product Name </strong></div></td>
                      <td  width="117" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style8 style7 style39 style40"><strong>Categorie</strong></div></td>
                      <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style8 style7 style39 style40"><strong> Keyword</strong></div></td>
                      <td  width="127" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style15 style8 style7 style39 style40"><strong>Date</strong></div></td>
                    </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
						
						try 
						{
						    String user = (String)application.getAttribute("uname");
							
							String p_Name="",categorie="",keyword="",date="";
							int i=1;
						    
						   	String query="select * from postsearch where user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								p_Name=rs.getString(3);
								categorie=rs.getString(4);
								keyword=rs.getString(5);
								date=rs.getString(6);
								
					
					%>
                    <tr>
                      <td height="53" align="center"  valign="middle">
                          <div align="center" class="style41">
                            <div align="center">
                              <%out.println(i);%>
                            </div>
                      </div></td>
                      <td height="53" align="center"  valign="middle">
                          <div align="center" class="style41">
                            <%out.println(p_Name);%>
                      </div></td>
                      <td height="53" align="center"  valign="middle">
                          <div align="center" class="style41">
                            <%out.println(categorie);%>
                      </div></td>
                      <td height="53" align="center"  valign="middle">
                          <div align="center" class="style41">
                            <%out.println(keyword);%>
                      </div></td>
                      <td height="53" align="center"  valign="middle">
                          <div align="center" class="style41">
                            <%out.println(date);%>
                      </div></td>
                    </tr>
                    <%
					i=i+1;	
						
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                  </table>
			      <p>&nbsp;</p>
			      <div align="right"><a href="UserMain.jsp" class="style11"><strong>Back</strong></a></div>
			  </div>
		  </div>
	  </div>
		<!-- end #content -->
		
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	</div>
<!-- end #footer -->
</html>
