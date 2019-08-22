

import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class Deleteuser extends GenericServlet
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
		String aadhar=request.getParameter("aadhar");
		
	    try {
	    	String query="delete from create_accounts where aadhar=?";
	    	PreparedStatement ps=con.prepareStatement(query);
	    	ps.setString(1,aadhar);
		
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			pw.println("<h2 >"+"USER DELETED SUCCESSFULLY"+"</h2>");
		
		}
		else
		{
			pw.println("VALUES NOT DELETED");	
		}
		
		}catch(Exception e)
		{
           System.out.println(e);
		}
	
	    pw.print("<center><a href ='deleteuser.html'><button>Back</button></a>");
	}
}