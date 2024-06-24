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
<title>User Re-Login Page..</title>
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
.style16 {color: #FF0000}
.style30 {color: #FF00FF}
.style25 {color: #FF00FF;
	font-size: 18px;
}
.style36 {color: #00CC00; font-weight: bold; }
.style37 {color: #FF0000; font-weight: bold; }
</style>
</head>
<body>
<!-- end #header-wrapper -->
<div class="style1" id="logo">
	<font color=black>BITS-BID</font></div>
<div id="header">
	<div id="menu">
		<ul>
			<li><a href="index.html" class="first">Home</a></li>
			<li class="current_page_item"><a href="UserRegister.html"> Register</a></li>
			<li><a href="UserLogin.jsp">Login</a></li>
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
				
				<h2 class="title"><a href="#"><span class="style25">Invalid Login Details, Please Try Again!!</span></a></h2>
			    <div class="entry">
				  <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
				    <table width="464" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                         <td width="197" height="46" align="center"><span class="style34">
                          <label for="name">Email (required)</label>
                        </span> </td>
                        <td width="253"><input id="email" name="email" class="text" /></td>
                      </tr>
<tr>
                        <td width="197" height="46" align="center"><span class="style34">
                          <label for="name">User Name (required)</label>
                        </span> </td>
                        <td width="253"><input id="name" name="userid" class="text" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                          <strong> New User?</strong></span><a href="UserRegister.html" class="style30"> Register </a></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
				  </form>
					<div align="right"><a href="UserLogin.jsp" class="style11"><strong>Back</strong></a></div>
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
