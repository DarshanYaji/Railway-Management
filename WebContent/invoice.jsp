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
	background-image:url(invoice.jpg);
	height: 100vh;
	background-size:cover;
	background-position:cover;	
}
</style>



</head>
<body>
<h2><center> Ticket Details</center></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="salmon">
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

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
String adhar=request.getParameter("aadhar");
PreparedStatement ps=con.prepareStatement("select * from book_ticket where aadhar=?");
ps.setString(1,adhar);
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
<center><a href ='book_ticket.html'>Back</a></center> 
</body>
</html>