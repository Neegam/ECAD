import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		String page= "";	
			try
			{
				Class.forName("com.ibm.db2.jcc.DB2Driver");
				Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/GNU1","Admin","Mahima@98");
PreparedStatement ps = con.prepareStatement("update register set fname='"+fname+"',lname='"+lname+"',address='"+address+"',contact='"+contact+"',dob='"+dob+"' where email='"+email+"'");

				int i=ps.executeUpdate();
				if(i!=0)
				{
					page="login.jsp?msg=success";
				}
				else
				{
					page="error.jsp?msg=failed";
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}		
		response.sendRedirect(page);
	}}
