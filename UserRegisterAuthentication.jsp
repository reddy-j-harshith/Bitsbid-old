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
<title>User Registration Status..</title>
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
.style14 {color: #FF00FF}
.style34 {
	font-size: 25px;
	color: #FF00FF;
}
.style16 {font-size: 14px; color: #FF00FF; }
.style18 {font-size: 16px;
	color: #00CC00;
}
.style19 {font-size: 16px; color: #33CC00; }
.style23 {font-size: 16px; color: #00FF00; }
.style24 {color: #FF0000}
.style5 {	color: #FF00FF;
	font-size: 14px;
	font-weight: bold;
}
.style35 {color: #00CC00}
.style36 {color: #FF0000; font-weight: bold; }
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
<div id="slideshow">
	<!-- start -->
	<div id="foobar">
		<div id="col1"><a href="#" class="previous">&nbsp;</a></div>
		<div id="col2">
			<div class="viewer">
				<div class="reel">
					<div class="slide"><img src="images/img04.jpg" width="726" height="335" alt="" /> </div>
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
				
				<h2 class="title style34">User Registration Status </h2>
		      <div class="entry">
		        <div>
                  <label for="name">
                  <%@ include file="connect.jsp" %>
                  <%@ page import="java.io.*" %>
                  <%@ page import="java.util.*" %>
                  <%@ page import="com.oreilly.servlet.*" %>
                  <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname=null,pass=null,email=null,mno=null,addr=null,dob=null,gender=null,pincode=null,location=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
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
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							
						}
							
					String query1="select * from user  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);	
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">User Name Already Exist..</p>
		          <p align="right"><a href="UserRegister.jsp" class="style5 style16 style35">Back</a></p>
		          <%
				
					   }
					   else
					   {
					   
					  String status = "Authorized";
					  String atype  ="Normal Account";
PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,address,dob,gender,status,atype) values(?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,status);
				
						ps.setString(9,atype);	
				       
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  <p class="style23">Registration Successfull.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="index.html" class="style16">Back</a></p>
		          <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                  </p>
                  <p align="left" class="style14">&nbsp;</p>
	            </div>
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
