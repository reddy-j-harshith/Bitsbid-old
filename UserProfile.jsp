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
<title>User Profile..</title>
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
.style22 {font-size: 14px}
.style26 {color: #3366FF}
.style9 {color: #FF0000; font-weight: bold; }
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style35 {font-size: 25px}
.style36 {color: #00CCFF}
.style38 {color: #FF6600}
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">User</span> <span class="style23"><%=(String)application.getAttribute("uname")%><span class="style30">'s</span></span> <span class="style30">Profile</span></span><span class="style30">..</span></span></a></h2>
			    <div class="entry">
			      <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
                    <%@ include file="connect.jsp" %>
                    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s44;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(7);
								
								
								
								
								
								
								
					%>
                    <tr>
                      
                    </tr>
                    <tr>
                      <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Name</strong></div></td>
                      <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Email</strong></div></td>
                      <td  width="164" valign="middle" height="40"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                      <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><strong>Hostel No</strong></div></td>
                      <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      
                        </div></td>
						
                    </tr>
					
                    <%
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
