<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<style>
body {
	font-size:20px;
	background-color: hsl(178, 100%, 74%);
	padding: 10px;
	padding-left:30px;
}
table{
width : 50%
}
h2 {
	text-decoration: underline;
	padding-right : 100px;
}
td {
	padding: 10px;
	width: 50%;
}
</style>
</head>
<body>
	<div align="center">
		
			<h2 style="color: red">User Registration Form</h2>
		<h1 style="color: red">${msg}</h1>
		<form:form action="submitform" modelAttribute="student"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td>Student Name :</td>
					<td><form:input path="studentName" /></td>
				</tr>
				<tr>
					<td>Student Password :</td>
					<td><form:password path="studentPassword" /></td>
				</tr>
				<tr>
					<td>Student Age :</td>
					<td><form:input path="studentAge" /></td>
				</tr>
				<tr>
					<td>Student Email :</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Student Phone Number :</td>
					<td><form:input path="phoneNumber" /></td>
				</tr>
				<tr>
					<td>Student Department :</td>
					<td><form:select path="studentDept">
							<form:option value="Mech" label="Mech" />
							<form:option value="CSE" label="CSE" />
							<form:option value="ECE" label="ECE" />
							<form:option value="EEE" label="EEE" />
							<form:option value="IEM" label="IEM" />
							<form:option value="ISE" label="ISE" />
							<form:option value="CE" label="CE" />
							<form:option value="AE" label="AE" />
						</form:select></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:radiobutton path="studentGender" value="Male" />Male
						<form:radiobutton path="studentGender" value="Female" />Female</td>
				</tr>
				<tr>
					<td>Languages Known :</td>
					<td><form:checkbox path="languages" value="English" />
						English <form:checkbox path="languages" value="Hindi" /> Hindi <form:checkbox
							path="languages" value="Kannada" /> Kannada <form:checkbox
							path="languages" value="Marathi" /> Marathi <form:checkbox
							path="languages" value="Telugu" /> Telugu <form:checkbox
							path="languages" value="Malayalam" />Malayalam</td>
				</tr>
				<tr>
					<td>Photo :</td>
					<td><input type="file" name="pic"></td>
				</tr>

				<tr>
					<td><input type="submit" value="Register Student"></td>
					<td><input type="reset" value="Clear"></td>
				</tr>
			</table>
		</form:form>

		<a href="/">Go Back to Login Page</a>
	</div>
</body>
</html>