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
<title>Account Creation Status..</title>
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
.style16 {	font-size: 12px;
	color: #FF00FF;
	font-weight: bold;
}
.style46 {font-size: 14px; color: #00FF00; font-weight: bold; }
.style47 {
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
				
				<h2 class="title"><a href="#"><span class="style12"><span class="style35"><span class="style30">Account Creation Status..</span></span></span></a></h2>
		      <div class="entry">
<div class="article">
  <h2 class="style12">&nbsp;</h2>
  <p>
    <%@ include file="connect.jsp" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.oreilly.servlet.*" %>
    <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,branch=null,email=null,addr=null ,accno=null,mno=null,amount=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("accno"))
							{
								accno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("branch"))
							{
								branch=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("amount"))
							{
								amount=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query121="select * from account  where user='"+uname+"' "; 
								Statement st121=connection.createStatement();
								ResultSet rs121=st121.executeQuery(query121);
									
								if ( rs121.next() )
							   {
							   
												   %>
  </p>
  </p>
  <p>&nbsp;</p>
  <p class="style46">You Have an Account Already, Make Use of It.. </p>
  <br/>
  <p> <a href="useraccount.jsp" class="style16">Back</a></p>
  <%
							   }
							   else{
				
						
									String query1="select * from account  where account_no='"+accno+"' "; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									
										
								if ( rs1.next() )
								   {
										%>
  </p>
  </p>
  <p>&nbsp;</p>
  <p class="style46"> Account Number Already Exist.. </p>
  <p> </p>
  <p> <a href="createnewaccount.jsp" class="style16">Back</a>
      <%
							
								   }
								   else
								   {
								   
								
			PreparedStatement ps=connection.prepareStatement("insert into account(account_no,user,address,email,mobile,branch,amount) values(?,?,?,?,?,?,?)");
									ps.setString(1,accno);
									ps.setString(2,uname);
									ps.setString(3,addr);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,branch);
									ps.setString(7,amount);
								
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style46">Account Created Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="useraccount.jsp" class="style16">Back</a></p>
  <%
						
								}}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
  </p>
  <div class="clr"></div>
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
