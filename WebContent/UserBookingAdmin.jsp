<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-image:url(t2.jpg);
	height: 100vh;
	background-size:cover;
	background-position:cover;	
}
</style>



</head>
<body>
<h2><center> Booking Details</center></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="sandybrown">
<th>From</th>
<th>To</th>
<th>Name</th>
<th>Aadhar Number</th>
<th>Train Name</th>
<th>Age</th>
<th>Gender</th>
<th>Date</th>
<th>No of Passenger</th>
<th>Seat No</th>
<th>Payment</th>
</tr>
<%
response.setHeader("cache- Control","no-cache,no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
PreparedStatement ps=con.prepareStatement("select * from book_ticket");
ResultSet rs=ps.executeQuery();
while(rs.next()) {
%>
<tr bgcolor="mistyrose">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td ><%=rs.getString(6) %></td>
<td ><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td ><%=rs.getString(9) %></td>
<td ><%=rs.getString(10) %></td>
<td ><%=rs.getString(11) %></td>
</tr>

<%} %>



</table><br/><br/>
<center><a href ='admin_login.html'><button>Back</button></a></center> 
</body>
</html>