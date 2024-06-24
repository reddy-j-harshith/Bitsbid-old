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
<title>Positive-Negative Comments on Posts..</title>
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
.style81 {
	font-weight: bold;
	font-size: 12px;
	color: #FF9900;
}
.style82 {font-size: 12px}
.style37 {font-size: 14px}
.style40 {color: #FF9900}
.style84 {color: #009900}
.style85 {
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
				
				<h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35">Queries..</span></a></h2>
			    <div class="entry">
				 
				    <table width="583" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="45"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style84"><strong>Sl No. </strong></div></td>
                        <td  width="156" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style84"><strong>Product  Image</strong></div></td>
                        <td  width="132" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style37 style84"><strong>Product Name</strong></div></td>
                        <td  width="112" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Category</strong></div></td>
     <td  width="112" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>By User</strong></div></td>
       <td  width="112" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Query</strong></div></td>
                        <td  width="126" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Reply</strong></div></td>
                      </tr>
                      <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*"%>
                      <%@ page import="java.util.*" %>
                      <%@ page import="java.util.Date" %>
                      <%@ page import="com.oreilly.servlet.*"%>
                      <%@ page import ="java.text.SimpleDateFormat" %>
                      <%@ page import ="javax.crypto.Cipher" %>
                      <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
                      <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
                      <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
                      <%
					  String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,user1="";
						int i=0,j=1;
						try 
						{
					
							
						   	String strQuery9 = "select p_name,categorie,user,comment from allcomments where user!='"+uname+"'";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(strQuery9);
					   		while ( rs.next() )
					   		{

									s2=rs.getString(1);
									s3=rs.getString(2);
									s4=rs.getString(3);
									s5=rs.getString(4);

									%>

 <form action="addmoneyAuthentication1.jsp" method="post" >
                      <tr>
                        <td height="172" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style82 style40"><strong>
                            <%out.println(j);%>
                        </strong></div></td>
                        <td width="156" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style82 style40" style="margin:10px 13px 10px 13px;" ><strong>
                            <input  name="image" type="image" src="images.jsp?Name=<%=s2%>&amp;Categorie=<%=s3%>" style="width:130px; height:130px;" />
                        </strong></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                          <a href="S_PostDetails3.jsp?p_Name=<%=s2%>&amp;p_Categorie=<%=s3%>">
                          <%out.println(s2);%>
                          </a></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s3);%>

                        </div></td>
  </a></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s4);%>

                        </div></td>
 <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s5);%>

                        </div></td><form action="addmoneyAuthentication1.jsp" method="post" >

                        <td height="172" align="center"  valign="middle">
							<textarea rows="5" cols="20" type="text"  name="amount"> </textarea>
                          </label>  
						 	<br/>
					 <input type="submit" name="Submit" value="Submit" />
                          </label>  
						  </form>					    </td>
                      </tr>
                      <%
												j+=1;	
						
							
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
	 
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	
<!-- end #footer -->
</html>
