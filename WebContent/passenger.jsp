<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String p_id= request.getParameter("p_id");
String e_id= request.getParameter("e_id");
String p_name= request.getParameter("p_name");


String ag= request.getParameter("p_age");
int age=Integer.parseInt(ag);

String p_phone= request.getParameter("p_phoneno");
int phoneno=Integer.parseInt(p_phone);

String p_email = request.getParameter("p_email");
String p_gender = request.getParameter("p_gender");
String reservation_status = request.getParameter("reservation_status");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway","root","root");
PreparedStatement ps=con.prepareStatement("insert into passenger values(?,?,?,?,?,?,?,?)");
ps.setString(1,p_id);
ps.setString(2,e_id);
ps.setString(3,p_name);
ps.setInt(4,age);
ps.setInt(5,phoneno);
ps.setString(6,p_email);
ps.setString(7,p_gender);
ps.setString(8,reservation_status);

int i=ps.executeUpdate();
if(i>0)
{
	out.print("you are successfully registered...");
	out.print("<center><a href='railway_passenger.html'>INSERT</a> ");
	
}
else
	
	out.print("you are  not successfully registered...");
%>
</body>
</html>