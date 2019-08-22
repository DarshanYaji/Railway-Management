

import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class Railway_train extends GenericServlet
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
		
	
		String trainname=request.getParameter("train_name");
		String trainno=request.getParameter("train_number");
		String arrival=request.getParameter("arrival_time");
		String departure=request.getParameter("departure_time");
		
		String source=request.getParameter("source");
		
		String destination=request.getParameter("destination");
		String price=request.getParameter("price");
		
		try
		{
		String query="insert into railway_train value(?,?,?,?,?,?,?)";
			
		PreparedStatement ps=con.prepareStatement(query);
		
		
		ps.setString(1,trainname);
		ps.setString(2,trainno);
		ps.setString(3,arrival);
		ps.setString(4,departure);
		ps.setString(5,source);
		ps.setString(6,destination);
		ps.setString(7,price);
		
		
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			pw.println("TRAIN ADDED SUCCESSFULLY");
		
		}
		else
		{
			pw.println("VALUES NOT INSERTED SUCCESSFULLY");	
		}
		
		}catch(Exception e)
		{
           System.out.println(e);
		}
		pw.print("<center><a href='railway_train.html'><button>Back</button></a> ");
	}
}