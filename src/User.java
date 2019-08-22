import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.sql.*;
public class User extends GenericServlet
{
	Connection con;
	
	public void init() throws ServletException
	{
		try{
	      Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","root");
			
		}catch(Exception e)
		{
			
			
		}
	}
	public void service(ServletRequest request,ServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
	
		
		String name=request.getParameter("username");
		String adhar=request.getParameter("aadhar");
		String password=request.getParameter("Passwords");
		try{
		String query = "select username,aadhar,Passwords from create_accounts where username=? and aadhar=? and Passwords=?";		
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1,name);
		ps.setString(2,adhar);
		ps.setString(3,password);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			
          RequestDispatcher rd=request.getRequestDispatcher("main.html");
          rd.forward(request,response);
		}
		else
		{
			 RequestDispatcher rd=request.getRequestDispatcher("userlogin.html");
	         rd.forward(request,response);
		}
		}catch(Exception e)
		{
			pw.println(e);
		}
	}
			
	
}