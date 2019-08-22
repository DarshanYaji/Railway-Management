

import java.io.*;
import javax.servlet.*;
import java.sql.*;

public class book_ticket extends GenericServlet
{
	
	
	
	Connection con;
	public void init() throws ServletException
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
		
			
			
		}catch(Exception e)
		{
			
		}
	}
	
	public void service(ServletRequest request,ServletResponse response) throws ServletException,IOException
	{
		

		
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
	    
		String fm=request.getParameter("from_place");
		String too=request.getParameter("to_place");
		String names=request.getParameter("name");
		String adhar=request.getParameter("aadhar");
		String trainname=request.getParameter("train_name");
		String ag=request.getParameter("age");
		
		String gen=request.getParameter("gender");
		String dat=request.getParameter("date");
		String passengers=request.getParameter("passenger");
		String seatno=request.getParameter("seat_no");
		String pay=request.getParameter("payment");
		
		try
		{

			
		String query="insert into book_ticket value(?,?,?,?,?,?,?,?,?,?,?)";
			
		PreparedStatement ps=con.prepareStatement(query);
		
		
		ps.setString(1,fm);
		ps.setString(2,too);
		ps.setString(3,names);
		ps.setString(4,adhar);
		ps.setString(5,trainname);
		ps.setString(6,ag);
		ps.setString(7,gen);
		ps.setString(8,dat);
		ps.setString(9,passengers);
		ps.setString(10,seatno);
		ps.setString(11,pay);
		
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			
			pw.println("Train Booked Successfully To get Ticket Enter the Ticket Button Please ");
			
		}
		else
		{
			pw.println("TRAIN NOT BOOKED SUCCESSFULLY");	
		}
		
		}catch(Exception e)
		{
           System.out.println(e);
		}
		pw.print("<style>\r\n" + 
				".btn {\r\n" + 
				"    border:5;\r\n" + 
				"    background-color: inherit;\r\n" + 
				"    padding: 14px 28px;\r\n" + 
				"    font-size: 16px;\r\n" + 
				"    cursor: pointer;\r\n" + 
				"    display: inline-block;\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				".btn:hover {background: #eee;}\r\n" + 
				"\r\n" + 
				".home{color: #000; width:100px;border-radius:10px;}\r\n" + 
				".menu {color: #000;width:100px;border-radius:10px;}\r\n" + 
				".order {color: #000;width:100px;border-radius:10px;float:right;}\r\n " + 
				".danger {color: red;}\r\n" + 
				".default {color: black;}\r\n"+
				
				"</style>"+
				"<center><a href='invoice.html'><button class=\"btn home\">Ticket</button></a></center>"+
				"<left><a href='book_ticket.html'><button class=\"btn menu\">Back</button></a></left>");
		
		
		pw.println("<body style='background-color:bisque;'>");
		
		
		
	}
}