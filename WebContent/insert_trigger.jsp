<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

html { 
margin:0;
  background: url(trigger.jpg) no-repeat center fixed; 
  background-size: cover;
}
div{
width:200px;
margin:50px 0 0 200px;
padding:5px;
height:20px;
background-color:brown;
color:peachpuff;
}

</style>
<body>
<center><h1><font color="mintcream" size="5">User's Trigger</font></h1></center><br/><br/>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="lightsalmon">
<th>Trigger Id</th>
<th>Aadhar Number</th>
<th>Action Performed</th>
<th>Execution Time</th>
</tr>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
PreparedStatement ps=con.prepareStatement("select * from logs");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor="mintcream">
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>

</tr>
<%}%>
</table><br><br><br>
<center><a href="deletetrigger.html"><font size="4" color="yellow"> Delete Trigger</font></a></center><br/><br/>
<center><a href="admin_login.html"><h5><font  size= "4" color="peachpuff">Back</font></h5></a></center>
	


</body>
</html>