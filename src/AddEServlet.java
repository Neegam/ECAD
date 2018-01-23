package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;
public class AddEServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddEServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailid=request.getParameter("emailid");
		String con=request.getParameter("con");
		String page="";
		String sql="insert into register(contact,emailid,type1,status)values('"+con+"','"+emailid+"','e','activated')";
		Model m = new Model();
		m.setEmailid(emailid);
		m.setCon(con);
		try {
			int i=Dao.register(m, sql);
			if(i!=0)
			{
				page="addEmployee.jsp?msg=success";
			}
			else
			{
				page="addEmployee.jsp?msg=failed";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(page);
	}
}
