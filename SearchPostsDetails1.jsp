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
<title>Searched Post Details..</title>
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
.style22 {font-size: 14px}
.style35 {font-size: 25px}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style70 {	color: #FF6600;
	font-weight: bold;
}
.style73 {color: #FF6600}
.style83 {color: #009900}
.style84 {
	color: #3399FF;
	font-weight: bold;
}
.style85 {color: #3399FF; }
.style86 {color: #FF00FF}
.style87 {
	color: #00FF00;
	font-weight: bold;
}
.style88 {color: #FFFFFF}
.style89 {font-family: "Courier New", Courier, monospace}
.style90 {
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
			
				<h2 class="title"><a href="#"><span class="style83 style35">Searched Product  <span class="style86"><%=request.getParameter("p_Name")%></span> Details.. </span></a></h2>
		      <div class="entry">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
			<%
 
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Categorie=request.getParameter("p_Categorie");
					
					String uname = (String)application.getAttribute("uname");
			
					String str1="select * from posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String uses = rs1.getString(5);
						String pname = rs1.getString(2);
						String description = rs1.getString(6);
						String price = rs1.getString(4);
						String date = rs1.getString(8);
					/*	
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+keyword+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					*/
						
			%><form method="post" action="purchaseverification1.jsp">
			      <table width="598" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:160px; height:360px;" />
                          </a> </div>
                      </div></td>
                      <td height="39" ><div align="center" class="style70 style73"><span class="style70">Category </span></div></td>
                      <td width="307"><div align="center" class="style84"><%= p_Categorie%></div></td>
                    </tr>
			<tr >
                      <td height="37" ><div align="center" class="style70"> Seller Id</div></td>
                      <td><div align="center" class="style84"><%= i%></div></td>
                    </tr>
			<tr >
                      <td height="37" ><div align="center" class="style70"> Product </div></td>
                      <td><div align="center" class="style84"><%= pname%></div></td>
                    </tr>
                    <tr >
                      <td height="37" ><div align="center" class="style70"> Base Price </div></td>
                      <td><div align="center" class="style84"><%= price%> Rs/-</div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style70">Highest Price</div></td>
<td><div align="center" class="style84"><%= uses%> Rs/-</div></td>
                      
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style70"> Description </div></td>
                      <td><div align="center" class="style85"></div>
                      
                        
                              <div align="center"><span class="style85">
                              <textarea name="textarea" cols="40" rows="3"><%= description%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" ><div align="center" class="style70">Bid Your Price</div></td>
                      <td><div align="center" class="style85"><input type="text" name="bid"/></div></td>
                    </tr>

                    <tr >
                      <td width="97" height="56" ></td>
                      <td><br/>
	
					 <label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=p_Name%>" name="p_Name"/>
					    <input type="hidden" value="<%=p_Categorie%>" name="p_Categorie"/>
				       <input type="submit" name="Submit3" value="BID" />
                    </div>
                 </label></form><br/></td>
                    </tr>
					 <%
						int a=0;
						String str2="select * from allcomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
							Statement stmt3=connection.createStatement();
							String strQuery3 = "select requestfrom,requestto from frequest where ((requestfrom ='"+uname+"' and requestto='"+c_user+"') ||(requestfrom ='"+c_user+"' and requestto='"+uname+"'))and status ='Accepted' ";
							ResultSet rs3 = stmt3.executeQuery(strQuery3);
							if(rs3.next()==true)
							{
								if(a==0){
					%>
					 <tr>
                       <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center">Reviewed By</div>
                       </div></td>
					   <td columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center">Date</div>
					     </div></td>
					   <td height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center">Review Details</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style78 style76 style10 style9 style88 style89 style22"><strong><%= c_user%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89 style22"><strong><%= c_date%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89 style22"><strong><%= c_comment%></strong></div></td>
			        </tr>
					<%}}%>
					 <tr>
                       <td height="57"><div align="left " class="style15 style11" style="margin-left:20px;">
                           <div align="center" class="style87">Send Message </div>
                       </div></td>
					   <td colspan="2"><form id="form1" method="post" action="postsubmit.jsp">
                           <input type="text" name="comment" size="40" height="30"/>
 			<input type="hidden" name="u_Name" value="<%=uname%>"/>
                           <input type="hidden" name="p_Name" value="<%=p_Name%>"/>
                           <input type="hidden" name="p_Categorie" value="<%=p_Categorie%>"/>
                           <input type="submit" name="Submit" value="Send" />
                       </form></td>
				    </tr>
	            </table>
			   
			      <p>&nbsp;</p>
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	             </p>
				   <div align="right"><a href="SearchPosts.jsp" class="style11"></a><a href="SearchPosts.jsp" class="style11"><strong>Back</strong></a></div>
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
