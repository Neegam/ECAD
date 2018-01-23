<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/Countries.js"></script>
</head>
<body onload="document.register.fname.focus()">
<jsp:include page="Index.jsp"></jsp:include>
<center>
<form name="register" action="Register" method="post">
<table border=10>
<tr>
<td>First Name</td>
<td><input type="text" name="fname" placeholder="Enter First Name" maxlength="100" size="20px">
</td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" name="lname" placeholder="Enter Last Name" maxlength="100" size="20px">
</td>
</tr> 

<tr>
<td>Contact</td>
<td><input type="number" name="con" min=7000000000 max=9999999999 placeholder="Enter Contact number" maxlength="100" size="20px">
</td>
</tr> 

<tr>
<td>Address:</td>
<td><textarea rows="10px" cols="20px" name="add" placeholder="Enter Address" maxlength="1000"></textarea>
</td>
</tr>

<tr>
<td><select name="gender">
<option value="default">I am</option>
<option value="M">Male</option>
<option value="f">Female</option>
<option value="O">Other</option>
</select>
 </td>
 </tr>
 
 <tr>
 <td>Country</td>
 <td><select name="country" id="country"></select>
 </td>
 </tr>
 
 <tr>
 <td>State</td>
 <td><select name="state" id="state"></select>
 </td>
 </tr>
 
 <tr>
 <td>Emailid</td>
 <td><input type="email" name="emailid" placeholder="Enter emailid" maxlength="100">
 </td>
 </tr>
 
 <tr>
 <td>Password</td>
 <td><input type="password" name="pass" placeholder="Enter Password">
 </td>
 </tr>
 
 <tr>
 <td>Confirm Password</td>
 <td><input type="password" name="pass1" placeholder="Enter Confirm Password">
 </td>
 </tr>
 
 <tr>
 <td>Date of Birth</td>
 <td><input type="date" name="dob" placeholder="Enter Date of Birth">
 </td>
 </tr>
 <tr>
 <td>Captcha</td>
 <td><img src="http://localhost:8080/WebContent-20170717T150557Z-001/capture.jsp"><td>
 <td><a href="Register.jsp">new capctha</a></td>
 </tr>
 <tr>
 <td>Captcha:</td>
 <td><input type="text" name="code" placeholder="Enter Captcha"></td>
 </tr>
 
 <tr>
 <td><input type="submit" value="Register"></td>	
 <td><input type="reset" value="Clear"></td>
 </tr>
</table>
</form>
</center>

<script type="text/javascript">
populateCountries("country","state");

</script>
</body>
</html>