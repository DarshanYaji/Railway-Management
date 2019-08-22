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

     String from=request.getParameter("from_place");
	 String to=request.getParameter("to_place");
	 String nam=request.getParameter("name");
	 String adhar=request.getParameter("aadhar");
     String tname=request.getParameter("train_name");
	 String ag=request.getParameter("age");
     String sex=request.getParameter("gender");
     String dat=request.getParameter("date");
     String nop=request.getParameter("passenger");
	 String seat=request.getParameter("seat_no");
     String cash=request.getParameter("payment");
	 				
	
	
   PreparedStatement ps=con.prepareStatement("update book_ticket set from_place=?,to_place=?,name=?, train_name=?, age=?,gender=?,date=?,passenger=?,seat_no=?,payment=?  where aadhar=?");

	ps.setString(1,from);

	ps.setString(2,to);
	
	ps.setString(3,nam);

	ps.setString(4,tname);
	ps.setString(5,ag);
	ps.setString(6,sex);

	ps.setString(7,dat);
	
	ps.setString(8,nop);
	ps.setString(9,seat);
	ps.setString(10,cash);

	ps.setString(11,adhar);
	
	
   int i=ps.executeUpdate();
	if(i>0)
	{
	out.println("train booking info updated successfully");
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
 out.print("<center><a href ='update_booking.html'>Back</a>");
	
%>
 </body>
 </html>