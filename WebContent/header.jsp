<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" href="Images/1.jpeg">
<link rel="Stylesheet" type="text/css" href="css/Style.css">
</head>
<body>
<div id="header">
<div id="logo"></div>
<div id="headtitle">Ganpat University</div>
<div id="subtitle">Serious In Education</div>
<ul class="mymenu">
<% if(session.getAttribute("emailid")!=null)
	{
	%>
	<li class="mi"><a class="ml" href="update.jsp">Update</a></li>
<li class="mi"><a class="ml" href="cp.jsp">Change Password</a></li>
<li class="mi"><a class="ml" href="photos.jsp">Photos</a></li>
<li class="mi"><a class="ml" href="logout.jsp">Sign Out</a></li>
<%}

else
{%>
	
<li class="mi"><a class="ml" href="about.jsp">About</a></li>
<li class="mi"><a class="ml" href="login.jsp">Login</a></li>
<li class="mi"><a class="ml" href="register.jsp">Register</a></li>
<li class="mi"><a class="ml" href="contact.jsp">Contact</a></li>
<%} %>
</ul>
</div>
</body>
</html>

