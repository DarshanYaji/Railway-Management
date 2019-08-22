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
	background-image:url(t3.jpg);
	height: 100vh;
	background-size:cover;
	background-position:cover;	
}
</style>



</head>
<body>
<h2><center> Profile Details</center></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="sandybrown">

<th>User Name</th>
<th>Aadhar Number</th>
<th>Gender</th>
<th>Email</th>
<th>Phone No</th>
<th>Address</th>

</tr>
<% 

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
String adhar=request.getParameter("aadhar");
String password=request.getParameter("Passwords");
PreparedStatement ps=con.prepareStatement("select * from create_accounts where aadhar=? and Passwords=?");
ps.setString(1,adhar);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
while(rs.next()) {
%>
<tr bgcolor="lightgoldenrodyellow">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td ><%=rs.getString(6) %></td>

</tr>
<%} %>

</table><br/><br/>
<center><a href ='main.html'><button>Back</button></a></center>
</body>
</html>