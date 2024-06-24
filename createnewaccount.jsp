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
<title>Creating New Bank Account..</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style9 {color: #FF0000; font-weight: bold; }
.style42 {color: #00FF00}
.style43 {color: #00FF00; font-weight: bold; }
.style45 {color: #0066FF}
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">User Payment Acccount Registration ..</span></span></span></a></h2>
			    
 <%@ include file="connect.jsp" %>
                    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
	
								
					%>

<div class="entry">
<form action="accountauthentication.jsp" method="post" id="" enctype="multipart/form-data">
  <label for="name"><span class="style43">Account Number(required)</span></label>
  <p class="style43">
    <input id="name" name="accno" class="text" />
  </p>
  <span class="style43">
  <label for="password">Branch (required)</label>
  </span>
  <p class="style43">
    <input type="text" id="branch" name="branch" class="text" />
  </p>
  <span class="style43">
  <label for="email">Email Address</label>
  </span>
  <p class="style43">
    <input id="email" name="email" class="text" value="<%out.println(s1);%>"/>
  </p>
  <span class="style43">
  <label for="mobile">Mobile Number</label>
  </span>
  <p class="style43">
    <input id="mobile" name="mobile" class="text" value="<%out.println(s2);%>"/>  </p>
  
  <p class="style9">
    <span class="style42">
    <label for="amount">Amount (required)</label>
    </span> </p>
  <p class="style9">
    <input id="amount" name="amount" class="text" />
  </p>
  <p align="center" class="style9"><br />
      <input name="submit" type="submit" value="Create Account" />
  </p>
  </form>
<p><span class="style45"><a href="useraccount.jsp" class="style10">Back</a></span></p>
		   <%   }
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
							%>   
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
