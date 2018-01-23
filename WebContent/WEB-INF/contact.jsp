<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
 background-color: gray;
}
pre{
	color:Black;
	font-weight:bold;
	font-size:20px;
	background-color:olive;
	text-align: center;
}
table {
	background-color:#FF1;
}
</style>
</head>
<body>
<form action="ContactServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>

<div style="float:left;width:50%;height:100%;margin-left:0px;margin-top:55px">
<pre>
Contact Information:

Ganpat University,
Ganesh Meridian A-Block;
Sola road,
Gujarat-380015
Mo.9999999999
Landline no.: 079-27498802

Website : www.ict.gnu.ac.in
</pre>
</div>
<div style="float:right;width:50%;height:100%;margin-right:0px;margin-top:55px">
<center>
<table>
<tr>
<td>From:</td>
<td><input type="email" name="email" placeholder="Enter Email Id" maxlength="100"></td>
</tr>
<tr>
<td>Sbject:</td>
<td><input type="text" name="sub" placeholder="Enter Subject" maxlength="100"></td>
</tr>
<tr>
<td>Message:</td>
<td><textarea rws="20" cols="50" name="msg" placeholder="Enter Message"></textarea></td>
</tr>
<tr>
<td><input type="submit" value="Register"></td>
<td><input type="reset" value="Clear"></td>
</tr>

</table>
</center>
</div>
</form>
</body>
</html>
