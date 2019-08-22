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
 
try
 {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");

     String trainname=request.getParameter("train_name");
	 String trainno=request.getParameter("train_number");
	 String arrival=request.getParameter("arrival_time");
	 String dep=request.getParameter("departure_time");
     String sourc=request.getParameter("source");
	 String dest=request.getParameter("destination");
     String pric=request.getParameter("price");
			
	
	
   PreparedStatement ps=con.prepareStatement("update railway_train set train_name=?,arrival_time=?,departure_time=?, source=?, destination=?,price=? where train_number=?");

	ps.setString(1,trainname);

	ps.setString(2,arrival);
	
	ps.setString(3,dep);

	ps.setString(4,sourc);
	ps.setString(5,dest);
	ps.setString(6,pric);

	ps.setString(7,trainno);
	
	
	
   int i=ps.executeUpdate();
	if(i>0)
	{
	out.println("train info updated successfully");
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
 out.print("<center><a href ='update_train.html'>Back</a>");

%>
 </body>
 </html>