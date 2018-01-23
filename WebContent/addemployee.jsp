<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AddEServlet" method="post">
		<jsp:include page="profile.jsp"></jsp:include>
		<center>
			<table>
				<tr>
					<td>Email ID :-</td>
					<td><input type="email" name="emailid"
						placeholder="Enter Email ID"></td>
				</tr>
				<tr>
					<td>Phone No :-</td>
					<td><input type="tel" name="con" placeholder="Enter Phone No"
						min="7000000000" max="9999999999"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add"></td>
					<td><input type="reset" value="Clear"></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
