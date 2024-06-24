<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%


   
    try
	{
			int amount1 =0,amount2 =10,pprice=0,uamount=0,sub=0,hp=0;
  			String s1,s2,s3,s4,ouser;
			
			String p_Name=request.getParameter("p_Name");
	
			String p_Categorie=request.getParameter("p_Categorie");			
			String bp=request.getParameter("bid");	
			
			String user=(String)application.getAttribute("uname");
		
String credit="";
			
			String sql="SELECT account_no,amount FROM account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
								credit=rs.getString(1);
								uamount=Integer.parseInt(rs.getString(2));				
																
								String sql1="SELECT * FROM posts where p_name='"+p_Name+"' and categorie='"+p_Categorie+"'";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt.executeQuery(sql1);
								if(rs1.next()==true)
								{
										pprice=Integer.parseInt(rs1.getString(4));
										hp=Integer.parseInt(rs1.getString(5));	
									ouser=rs1.getString(9);	
									
										
											   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
											   Date now = new Date();
						
											   String strDate = sdfDate.format(now);
											   String strTime = sdfTime.format(now);
											   String date = strDate + "   " + strTime;
											   
											    String sql2="SELECT * FROM cart where (p_name='"+p_Name+"' and categorie='"+p_Categorie+"') and user='"+user+"'";
												Statement stmt2 = connection.createStatement();
												ResultSet rs2 =stmt.executeQuery(sql2);
												if(rs2.next()==true)
												{
											   
													
														 %><br/><%
														 out.println("Already Added This Product To Cart!!..");
														 %><br/><br/><a href="SearchPostsDetails1.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
													
												}
												else
												{String status = "waiting";
														PreparedStatement ps1=connection.prepareStatement("insert into cart(user,p_name,categorie,date,price,hp,bp,ouser,status) values(?,?,?,?,?,?,?,?,?)");
														ps1.setString(1,user);
														ps1.setString(2,p_Name);
														ps1.setString(3,p_Categorie);
														ps1.setInt(5,pprice);	
														ps1.setString(4,date);
														ps1.setInt(6,hp);
														ps1.setString(7,bp);
														ps1.setString(8,ouser);
														ps1.setString(9,status);
														int k=ps1.executeUpdate();
														 if(k>0)
														 {
																%><br/><%
																out.println("Added To confirmation..");
																%><br/><br/><a href="SearchPostsDetails1.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
													 	}
																
												}
								
									}
									else
									{
									
											%><br/><%
											out.print("Product Details Not Found..");
											 %><br/><br/><a href="SearchPostsDetails1.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
									
									}
					}
					
					else
					{	 
						%><br/><%
						out.print("Account Not Found..");
						 %><br/><br/><a href="SearchPostsDetails1.jsp?p_Name=<%=p_Name%>&amp;p_Categorie=<%=p_Categorie%>">Back</a><%
						
					}
									
					
		connection.close();
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
		
