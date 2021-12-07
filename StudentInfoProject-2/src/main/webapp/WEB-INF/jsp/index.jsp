<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
body {
	background-color: #ff6347;
	padding: 50px;
}
h1 {
	width: 50%;
}
h2 {
	text-decoration: underline;
}
td {
	padding: 15px;
	width: 50%;
}
legend {
	background-color: pink;
}
fieldset {
	width: 40%;
	height: 80%;
	text-align: center;
	padding : 20px;
}
</style>
</head>
<body>
	<div align="center">
	
		<h1 style="color: blue; padding:15px"> Student Information System</h1>
		<h1 style="color: blue">${msg}</h1>
		<fieldset>
			<legend>
				<font color="white"><b>Login Here:</b> </font>
			</legend>
			
			<form:form action="validate" modelAttribute="student">
				<table>
					<tr>
						<td>User Name :</td>
						<td><form:input path="studentName" /></td>
					</tr>

					<tr>
						<td>Password :</td>
						<td><form:password path="studentPassword" /></td>
					</tr>

					<tr>
						<td><input type="submit" value="Login"></td>
						<td><input type="reset" value="Clear"></td>
					</tr>
					<tr>
						<td>New Student To Page--></td>
						<td><a href="registeration">Register Now Here </a></td>
					</tr>
				</table>
			</form:form>
		</fieldset>

	</div>
</body>
</html>