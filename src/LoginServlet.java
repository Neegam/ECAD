package controller;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.Dao;
import model.Model;
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public loginServlet() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("pass");
		String type = request.getParameter("type");
		String page = "";
		String sql = "select * from register where emailid='" + emailid + "' and password='" + password
				+ "' and type1='" + type + "'";
		if (emailid.equals("") || password.equals("")) {
			page = "error.jsp?msg=abc";
		} else {
			Model m = new Model();
			m.setEmailid(emailid);
			m.setPassword(password);
			m.setType(type);

			try {
				ResultSet rs = Dao.validate(m, sql);
				if (rs.next()) {
					HttpSession session = request.getSession();
					session.setAttribute("emailid", emailid);
					session.setAttribute("type", type);
					page = "profile.jsp?msg=success";
				} else {
					page = "error.jsp?msg=failed";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		response.sendRedirect(page);
	}
}
