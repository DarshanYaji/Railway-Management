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
	background-image:url(t1.jpg);
	height: 130vh;
	background-size:cover;
	background-position:cover;	
}
</style>



</head>
<body>
<h2><center> Train List</center></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="skyblue">
<th>Train Name</th>
<th>Train Number</th>
<th>Arrival Time</th>
<th>Departure Time</th>
<th>Source</th>
<th>Destination</th>
<th>Price</th>


</tr>
<%
response.setHeader("cache- Control","no-cache,no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
PreparedStatement ps=con.prepareStatement("select * from railway_train");
ResultSet rs=ps.executeQuery();
while(rs.next()) {
%>
<tr bgcolor="navajowhite">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td ><%=rs.getString(6) %></td>
<td ><%=rs.getString(7) %></td>

</tr>

<%} %>




</table><br/><br/>
<center>  <p class="message"> <marquee><font size="5" color=yellow>All the Trains are daily available</font></marquee> </p><br/><br/>
<a href ='main.html'>Back</a></center> 
</body>
</html>