<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bill1</title>
</head>
<body>
<%
String name=request.getParameter("hd");
int Price=Integer.parseInt(request.getParameter("pri"));
int quantity=Integer.parseInt(request.getParameter("qty"));
out.println("Train name is \t"+name+"<br>");
out.println("Price is \t"+Price+"<br>");
out.println("No of Passengers \t"+quantity+"<br>");
int total1=Price*quantity;
out.println("<hr width='200px' align='left'>");
out.println("your total amount is=Rs."+total1+"<br><br>");
out.println(" so please enter this amount in amount column in book ticket table <br><br>");
%>
<a href ='book_ticket.html'>Back</a>
</body>

</html>