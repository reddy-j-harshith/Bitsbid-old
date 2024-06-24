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
<title>Adding Posts..</title>
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
.style35 {font-size: 25px}
.style36 {font-size: 25px; color: #FF00FF; }
.style8 {font-size: 16px}
.style38 {font-size: 15px; color: #00CC00;}
.style39 {color: #FF0000}
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
<
<div id="page">
	<div id="page-bgtop">
		<div id="content">
			<div class="post">
				
				<h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35">Add Product..</span></a></h2>
			    <div class="entry">
			      <form action="A_AddPosts1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			        <%@page import ="java.util.*"%>
                    <%@ include file="connect.jsp" %><%@ page import="org.bouncycastle.util.encoders.Base64"%>
                    <%
	
      	String user=(String )application.getAttribute("uname");
String s11;
int j=0;
Statement st,st1;
	ResultSet rs, rs1;

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();

      		
           String query="select category FROM categories"; 

String query1="select * from user where username='"+user+"'"; 

          st=connection.createStatement();
st1=connection.createStatement();
           rs=st.executeQuery(query);
 rs1=st1.executeQuery(query1);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("category"));
	
	   }
	   
		if ( rs1.next() )
					   		{
								j=rs1.getInt(1);
								s11=rs1.getString("username");
								
	
		
%>

                    <table width="433" border="0" align="center">
                      <tr>
                        <td width="149" height="33"><div align="justify"><span class="style3 style8 style38">Select  Category </span></div></td>
                        <td width="274"><label>
                          <select id="s1" name="categorie">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="36"><div align="justify"><span class="style3 style8 style38"> Product Name </span> </div></td>
                        <td><label>
                          <input type="text" id="t1" name="name" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">Base Price</span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="price" />&nbsp; <span class="style3 style8 style38">in Rs</span>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="53"><div align="justify"><span class="style3 style8 style38">Highest Price</span></div></td>
                        <td><label>
			<input type="text" id="textarea" name="uses" />&nbsp; <span class="style3 style8 style38">in Rs</span>
                          
                        </label></td>
                      </tr>
                      <tr>
                        <td height="51"><div align="justify"><span class="style3 style8 style38"> Product Description </span></div></td>
                        <td><label>
                          <textarea name="desc" cols="40" rows="5" id="t2"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="38"><div align="justify"><span class="style3 style8 style38"> Select Image </span></div></td>
                        <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                      </tr>
<tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">User</span></div></td>
                        <td>
                          <input type="text" id="un" name="uname" value="<%out.println(s11);%>"/>&nbsp;
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Post" />
                          </div></td>
                      </tr>
                    </table>
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
</form>
			      <p>&nbsp;</p>
		
					<div align="right"><a href="UserMain.jsp" class="style11"><strong>Back</strong></a></div>
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
