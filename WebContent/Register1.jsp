<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%

response.getWriter().append("Served at: ").append(request.getContextPath());
String fname=request.getParameter("fn");
String lname=request.getParameter("ln");
String dob=request.getParameter("dob");
String mobno=request.getParameter("con");
String add=request.getParameter("add");
String gen=request.getParameter("gen");
String country=request.getParameter("country");
String state=request.getParameter("state");
String emailid=request.getParameter("emailid");
String pwd=request.getParameter("pwd");
String cmpwd=request.getParameter("cmpwd");
String page1="";
String username="";
try
{
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/PRACT1","lenovo","Neel@9827121997");
PreparedStatement ps=con.prepareStatement("Insert into register values('"+fname+"','"+lname+"','"+dob+"','"+mobno+"','"+add+"','"+gen+"','"+country+"','"+state+"','"+emailid+"','"+pwd+"','"+cmpwd+"','"+username+"') ");
boolean i=ps.execute();
	if(i==false)
	{		
		page1="login.jsp?msg=hello";	
	}
	else
	{}
}
catch(Exception e)
{
	e.printStackTrace();
}
response.sendRedirect(page1);
%>
<body>
</body>
</html>
