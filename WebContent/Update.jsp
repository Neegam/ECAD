<%@ page import="java.sql.*"%>
<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Update page</title>
</head>
<%
String email=(String)session.getAttribute("email");
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/GNU1","lenovo","9827121997");
	PreparedStatement ps=con.prepareStatement("select * from register where email='"+email+"'");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String fname=rs.getString(1);
		String lname=rs.getString(2);
		String contact=rs.getString(3);
		String address=rs.getString(4);
		String dob=rs.getString(8);	
%>
<body>




<form name="update" method="post" action="UpdateServlet">
<jsp:include page="header.jsp"></jsp:include>
<div id="Content">
<div id="Content">
<table align="center">
	<tr>
	<td>Firstname:</td>
	<td><input type="text" name="fname" value="<%= fname%>" placeholder="Firstname" maxlenght="100"></td>
	</tr>
	<tr>
	<td>lastname:</td>
	<td><input type="text" name="lname" value="<%= lname%>" placeholder="lastname" maxlenght="100"></td>
	</tr>
	
	<tr>
	<td>Contact:</td>
	<td><input type="number" name="contact" value="<%= contact%>" min="7000000000" max="9999999999" placeholder="Contact" maxlenght="10"></td>
	</tr>
	
	<tr>
	<td>Address</td>
	<td><input type="text" rows="10px" cols="20px" value="<%= address%>" name="address" placeholder="address"></td>
	</tr>
<tr>
	<td>DOB:</td>
	<td><input type="date" name="dob" value="<%= dob%>" placeholder="Date Of Birth" maxlength="20" required="required"></td>
	</tr>
<tr>
<td>Email</td>
<td>${email }</td>
<td><input type="hidden" name="email" value="${email}"></td> 

<tr>
	<td><input type="submit" value="Update"></td>
	<td><input type="reset" value="Clear"></td>
	</tr>
</tr>	
</table>
</div>
</form>
<%}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</div>
</body>
</html>
