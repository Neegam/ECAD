<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta http-equiv="refresh"
	content="<%=session.getMaxInactiveInterval()%>;URL=./logout.jsp">
<!--  Delete Back Browser's History Important!-->
<script type="text/javascript" language="javascript">
	javascript: window.history.forward(1);
</script>
<%
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Expires", "0");
	response.setDateHeader("Expires", -1);
%>
</script>
<title>Insert title here</title>
</head>
<body>
	<%
		String type = (String) session.getAttribute("type");
		if (type.equals("a")) {
	%>
	<%--<% Cookie[] c= request.getCookies(); --%>
	<%-- Welcome <%=c[0].getValue()%>--%>
	<h2><a href="addEmployee.jsp">Add Employee</a></h2>
	<h2><a href="viewEmployee.jsp">View Employee</a></h2>
	<h2><a href="deleteEmployee.jsp">Delete Employee</a></h2>
	<h2 ><a href="cp.jsp">Change Password</a></h2>
	<h2><a href="logout.jsp">Logout</a></h2>

	<%
		} else if (type.equals("e")) {
	%>
	<h2><a href="update.jsp">Update Profile</a></h2>
	<h2><a href="viewCustomer.jsp">View Customer</a></h2>
	<h2><a href="deleteCustomer.jsp">Delete Customer</a></h2>
	<h2><a href="cp.jsp">Change Password</a></h2>
	<h2><a href="logout.jsp">Logout</a></h2>
	<%
		} else if (type.equals("u")) {
	%>
	<h2><a href="update.jsp">Update Profile</a></h2>
	<h2><a href="sf.jsp">Send Feedback</a></h2>
	<h2><a href="aq.jsp">Ask Query</a></h2>
	<h2><a href="cp.jsp">Change Password</a></h2>
	<h2><a href="logout.jsp">Logout</a></h2>
	<%
		}
	%>
</body>
</html>
