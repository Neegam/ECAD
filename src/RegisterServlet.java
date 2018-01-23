

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String con=request.getParameter("con");
	String gender=request.getParameter("gender");
	String country=request.getParameter("country");
	String state=request.getParameter("state");
	String emailid=request.getParameter("emailid");
	String password=request.getParameter("pass");
	String password1=request.getParameter("pass1");
	String date=request.getParameter("dob");
	String page="";
	
	if(password.equals(password1))
	{
	String data="123456789009876543211234567890";
	String otp="";
	char ch[]=data.toCharArray();
	for(int i=0;i<4;i++)
	{
		int j=(int)((Math.random())*30);
		otp=otp+ch[j];
	}
	String username=fname+"_"+otp;
	try
		{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection conn=DriverManager.getConnection("jdbc:db2://localhost:50000/gnu","lenovo","Neel@9827121997");		
		PreparedStatement ps=conn.prepareStatement("insert into register values('"+fname+"','"+lname+"','"+con+"','"+gender+"','"+country+"','"+state+"','"+emailid+"','"+password+"','"+date+"','"+username+"')");
		int k=ps.executeUpdate();
		if(k!=0)
		{
			page="login.jsp?msg=success";
		}
		else{
			page="error.jsp?msg=failed";
		}
		}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}
	else{
		page="error.jsp?msg=check";
	}
	}
	
	
}
