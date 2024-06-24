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
<title>User Main Page..</title>
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
.style2 {
	font-size: 26px;
	color: #FF00FF;
}
.style12 {	color: #6633FF;
	font-size: 24px;
}
.style19 {color: #009900}
.style3 {color: #FF00FF}
.style22 {color: #00CC00}
.style23 {
	color: #FF0000;
	font-weight: bold;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Slashdot's Menu</title>
	<link rel="stylesheet" type="text/css" href="sdmenu/sdmenu.css" />
	<script type="text/javascript" src="sdmenu/sdmenu.js">
		
	</script>
	<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
	</script>



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
<div id="slideshow">
	<!-- start -->
	<div id="foobar">
		<div id="col1"><a href="#" class="previous">&nbsp;</a></div>
		<div id="col2">
			<div class="viewer">
				<div class="reel">
					<div class="slide"><img src="images/img04.jpg" width="726" height="335" alt="" />  </div>
				</div>
			</div>
		</div>
		<div id="col3"><a href="#" class="next">&nbsp;</a></div>
	</div>
	<script type="text/javascript">

						$('#foobar').slidertron({
							viewerSelector:			'.viewer',
							reelSelector:			'.viewer .reel',
							slidesSelector:			'.viewer .reel .slide',
							navPreviousSelector:	'.previous',
							navNextSelector:		'.next',
							navFirstSelector:		'.first',
							navLastSelector:		'.last'
						});
						
					</script>
	<!-- end -->
</div>
<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
				
				<h2 class="title"><a href="#"><span class="style2">Welcome<span class="style12"> <span class="style19"><span class="style22"><%=(String)application.getAttribute("uname")%> </span></span><span class="style3">..</span></span></span></a></h2>
				<div class="entry">
					<p align="justify">ONLINE BIDDING SITE </div>
				</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>	
					<h2> User  Menu</h2>
					
					
					
					
					<div style="float: left" id="my_menu" class="sdmenu">
      <div>
        <span>Personal Details</span>
        <a href="UserProfile.jsp">  My Profile</a>

<a href="useraccount.jsp" class="style3">Manage Bank Account</a>
        
      </div>
      <div>
        <span>Operations</span>
  <a href="A_AddPosts.jsp">Add your Products</a>   
<a href="U_viewposts.jsp">View Your Products</a>  
<a href="U_MyCartProducts.jsp">Bids Received</a>

        <a href="SearchPosts.jsp">Search others Products</a> 

        <a href="A_PosNegComments.jsp">Query Reply</a> 
  <a href="U_MyCartProducts1111.jsp">Check status and purchase</a> 
<a href="U_PurchaseList.jsp">My Purchase</a>

<a href="U_SearchHistory.jsp">My Search History </a>

     
     

      </div>
	  
     
      <div>
        <span>Log Out</span>
        <a href="index.html"><strong>Log Out</strong></a>
		 
      </div>
	 
				    <h2>&nbsp;</h2>
			 
	      </ul>
      </div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
</div>
<!-- end #footer -->
</html>
