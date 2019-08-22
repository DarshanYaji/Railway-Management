<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body>
 <%

 response.setHeader("cache- Control","no-cache,no-store, must-revalidate");
 response.setHeader("Pragma","no-cache");
 response.setHeader("Expires","0");
 
try
 {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");

   String username=request.getParameter("username");
	String adhar=request.getParameter("aadhar");
	
	 String email=request.getParameter("Email");
		String phone=request.getParameter("Phone_no");
		String address=request.getParameter("Address");
		 String password=request.getParameter("Passwords");
		
	
	
   PreparedStatement ps=con.prepareStatement("update create_accounts set username=?,Email=?,Phone_no=?,Address=?,Passwords=? where aadhar=?");

	ps.setString(1,username);

	
	
	ps.setString(2,email);

	ps.setString(3,phone);
	ps.setString(4,address);
	ps.setString(5,password);


	ps.setString(6,adhar);
	
	
   int i=ps.executeUpdate();
	if(i>0)
	{
	out.println("updated successfully");
 }
	else
	{
		out.println("not updated successfully");

	}
 }	
 
catch(Exception e)
 {
	 System.out.println(e);
	
 }
 out.print("<center><a href ='update_user.html'>Back</a>");
	
%>
 </body>
 </html>