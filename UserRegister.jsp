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
<title>User Registration..</title>
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
.style32 {
	font-size: 25px;
	font-weight: bold;
	color: #FF00FF;
}
.style14 {color: #FF00FF}
.style33 {color: #00CC00}
.style34 {
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
			<li><a href="index.html" class="first">Home</a></li>
			<li class="current_page_item"><a href="UserRegister.jsp"> Register</a></li>
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

<script>  
function validateemail()  
{  
var x=document.myform.email.value;  
var atposition = x.indexOf("@");  
var dotposition = x.lastIndexOf(".");  
if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length){  
  alert("Please enter a valid e-mail address");  
  return false;  
  }  
}  
</script>  
 
<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
				
				<h2 class="title"><span class="style32">New Registration</span></h2>
			    <div class="entry">
			      <form action="UserRegisterAuthentication.jsp" method="post" id="email" name="myform" enctype="multipart/form-data">
                    <label for="name"><span class="style33">User Name (required)</span></label>
                    <p class="style33">
                      <input id="name" name="userid" class="text" />
                    </p>
			        <span class="style33">
			        <label for="password">Password (required)</label>
                    </span>
			        <p class="style33">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
			        <span class="style33">
			        <label for="email">Email Address (required)</label>
                    </span>
			        <p class="style33">
                      <input id="email" name="email" class="text" onkeyup="return validate();" />
                    </p>
			        <span class="style33">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style33">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			       
			        <span class="style33">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style33">
                      <input id="dob" name="dob" class="text" />
                    </p>
			      
                    </p>
			        <p class="style33">
                      <label for="pic">Select Profile Picture (required)</label>
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="REGISTER"  />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="index.html" class="style11">Back</a></p>
		          </form>
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
