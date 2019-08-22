

import java.io.*;
import javax.servlet.*;
import java.sql.*;
public class Create_user extends GenericServlet
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
		
	
		String username=request.getParameter("username");
		String adhar=request.getParameter("aadhar");
		String gender=request.getParameter("Gender");
		String email=request.getParameter("Email");
		
		String pno=request.getParameter("Phone_no");
		
		String address=request.getParameter("Address");
		String password=request.getParameter("Passwords");
		
		
		
		try
		{
		String query="insert into create_accounts values(?,?,?,?,?,?,?)";
			
		PreparedStatement ps=con.prepareStatement(query);
		
		
		ps.setString(1,username);
		ps.setString(2,adhar);
		ps.setString(3,gender);
		ps.setString(4,email);
		ps.setString(5,pno);
		ps.setString(6,address);
		ps.setString(7,password);
		
	
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			pw.println("<h2 >"+"ACCOUNT CREATED SUCCESSFULLY"+"</h2>");
		}
		else
		{
			pw.println("VALUES NOT INSERTED SUCCESSFULLY");	
		}
		
		}catch(Exception e)
		{
           System.out.println(e);
		}
		
		pw.print("<center><a href ='Create.html'><button>Back</button></a><br/><br/><a href ='userlogin.html'>Login</a>");
		
	}
}