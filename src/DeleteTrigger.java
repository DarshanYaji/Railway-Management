

import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class DeleteTrigger extends GenericServlet
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
			System.out.println(e);
		}
	}
	
	public void service(ServletRequest request,ServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String triggerid=request.getParameter("id");
		
	    try {
	    	String query="delete from logs where id=?";
	    	PreparedStatement ps=con.prepareStatement(query);
	    	ps.setString(1,triggerid);
		
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			pw.println("<h2 >"+"TRIGGER DELETED SUCCESSFULLY"+"</h2>");
			
		}
		else
		{
			pw.println("TRIGGER NOT DELETED");	
		}
		
		}catch(Exception e)
		{
           System.out.println(e);
		}
	    pw.print("<center><a href ='deletetrigger.html'><button>Back</button></a>");
		
	}
}