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
<title>Purchasing Cart Products..</title>
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
				
				<h2 class="title style30 style35"><a href="#" class="style36"><span class="style36 style35">Bids received.</span></a></h2>
			    <div class="entry">
				 
				    <table width="606" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                      <tr>
                        <td  width="45"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style84"><strong>Sl No. </strong></div></td>

                        <td  width="116" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style37 style84"><strong>Product Name</strong></div></td>
                        <td  width="113" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Category</strong></div></td>
    <td  width="113" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Base price</strong></div></td>
    <td  width="113" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Highest Price</strong></div></td>
    <td  width="113" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Bid Price</strong></div></td>
                        <td  width="104" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Confirm</strong></div></td>
         <td  width="104" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style84 style37"><strong>Status</strong></div></td>
                
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
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,user1="",pna,ona;
						int i=0,j=1;
						try 
						{
					
							String user=(String)application.getAttribute("uname");

						   	String strQuery9 = "select * from cart where user!='"+user+"' and ouser='"+user+"'";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(strQuery9);

					   		while( rs.next() )
					   		{
								
										i=rs.getInt(1);
										s1=rs.getString(2);
										s2=rs.getString(3);
										s3=rs.getString(4);
										s4=rs.getString(5);
										s5=rs.getString(6);
										s6=rs.getString(7);
s7=rs.getString(8);
s8=rs.getString(10);
										
									%>
                      <tr>
                        <td height="172" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style82 style40"><strong>
                            <%out.println(j);%>
                        </strong></div></td>
                        
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                     
                          <%out.println(s2);%>
                          </a></div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                          <%out.println(s3);%>
                        </div></td>
                        <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s5);%>Rs/-

                        </div></td>
  <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s6);%>Rs/-

                        </div></td>
  <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s7);%>Rs/-

                        </div></td>
                        <td height="172" align="center"  valign="middle">
							<div align="center" class="style20 style37 style46"><a href="A_UserStatus.jsp?id=<%=i%>" class="style32 style30">Accept</a></div>
                          </label>  
						  </form><br/>
						  <div align="center" class="style20 style37 style46"><a href="A_UserStatus1.jsp?id=<%=i%>" class="style32 style30">Reject</a></div>
                          </label>  
						  </form>				    </td>
 <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81">
                           
                              <%out.println(s8);%>
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
