<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Throughout 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20100423

-->
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Searching Posts..</title>
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
.style30 {color: #FF00FF}
.style12 {color: #0000FF}
.style35 {font-size: 25px}
.style44 {	font-family: "Times New Roman", Times, serif;
	color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style4 {
	font-size: 14px;
	color: #00FF00;
}
.style78 {color: #00CCFF}
.style82 {color: #00FF00}
.style83 {color: #FFFFFF}
.style84 {
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
				
				
		       
		  </div>
			<div class="post">
				
				<h2 class="title"><a href="#"></a><span class="style12"><span class="style35"><span class="style30">Products Found..</span></span></span></a></h2>
				<div class="entry">
				  <div class="post_content">
                    <p>
                      <%
							try
							{
								String input="",l_Input="",p_Name="",p_Desc="",p_Desc1="";
					
								String p_Price="",p_Categorie="";
										
								String uname = (String)application.getAttribute("uname");
								
								
								
								 
								
								String str = "select * from posts where uname='"+uname+"'";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
								    p_Name = rs.getString(2);
									p_Price = rs.getString(4);
									p_Categorie = rs.getString(3);
									p_Desc = rs.getString(6);  

										
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+input+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					%>
                    </p>
				    <div align="center" class="style15">
                      <div align="center"><span class="style81"><span class="style82">Product Name :</span> </span><span class="style18 style83"> <%=p_Name%></span></div>
			        </div>
				    <div align="center">
                      </p>
                    </div>
				    <p align="center"></p>
				    <div align="center" class="style15">
                      <div align="center"><span class="style4 style17">Base Price :<span class="style83"> </span></span> <span class="style18 style83"> <%=p_Price%></span></div>
			        </div>
				    <div align="center">
                      </p>
                    </div>
				    <p align="center"></p>
				    <div align="center" class="style5 style14">
                      <div align="center"><span class="style15"><a href="SearchPostsDetails.jsp?p_Name=<%=p_Name%>&amp;keyword=<%=l_Input%>&amp;p_Categorie=<%=p_Categorie%>" class="style56 style30"><strong>View Details</strong></a></span></div>
			        </div>
				    <div align="center">
                      </p>
<p align="center"></p>
				    <div align="center" class="style5 style14">
                      <div align="center"><span class="style15"><a href="U_MyCartProducts.jsp?p_Name=<%=p_Name%>&amp;keyword=<%=l_Input%>&amp;p_Categorie=<%=p_Categorie%>" class="style56 style30"><strong>View Bids</strong></a></span></div>
			        </div>
				    <div align="center">
                      </p>
                    </div>
				    <p></p>
				    <div>
                      <div align="center">--------------------------------------------------------</div>

 <a href="UserMain.jsp" class="style44">Back</a></div>
			        </div>
				    <%
						}
					 
					}
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
						  
				%>
				  </div>
			  </div>
				
		  </div>
		</div>
		<!-- end #content -->
	 
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	</div>
<!-- end #footer -->
</html>
