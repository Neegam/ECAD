package controller;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;
import java.util.Date;

public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ContactServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String from=request.getParameter("email");
	 String sub=request.getParameter("sub");
	 String msg=request.getParameter("msg");
	 String page="";
	 String temail="admin@admin.com";
	 Date d=new Date();
	 SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy"); 
	 //femail,temail,subject,message,date,suggession--null
	 if(from.equals("")||sub.equals("")||msg.equals("")){
		 page="error.jsp?msg=abc";
	 }
	 else{
		 Model m=new Model();
		 m.setEmail(from);
		 m.setMsg(msg);
		 m.setSub(sub);
		 try {
			int i =Dao.register(m, "insert into feedback(femail,temail,subject,msge,d) values('"+from+"','"+temail+"','"+sub+"','"+msg+"','"+d+"')");
			if(i!=0){
				page="contact.jsp?msg=success";
			}
			else{
				page="contact.jsp?msg=failed";
			}
		 } catch (SQLException e) {
			e.printStackTrace();
		}
	 }
	}

}
