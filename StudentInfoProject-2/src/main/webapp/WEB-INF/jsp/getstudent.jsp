<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Student Details</title>
<style>
Body {
background-color: lightgreen;
padding:100px;
}
</style>
</head>
<body>

<div align="center">
	<h3>${msg}</h3>
	<form action="getbystudentid" method="post">
		User ID : <input type="text" name="studentId">
		<input type="submit" value="GetStudent">
	</form>
</div>

</body>
</html>