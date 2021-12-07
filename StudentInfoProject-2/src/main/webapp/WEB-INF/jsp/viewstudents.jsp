<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All students</title>
</head>
<style>
body {
	background-color: #24c791;
	padding: 50px;
}
h2 {
	text-decoration: underline;
}
td {
	padding: 5px;
	
}
.back{
font-size:30px;
padding:20px;
}
</style>
<body>
	<div align="center">
		<h2 style="color: LightGray; font-size:30px">All Registered Students List</h2>
		<table border="1">
			<tr>
				<td>Student ID</td>
				<td>Student Name</td>
				<td>Student Age</td>
				<td>Student Email</td>
				<td>Student Phone Number</td>
				<td>Student Department</td>
				<td>Student Gender</td>
				<td>Languages Known</td>
				<td>Photo</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>



			<c:forEach items="${student}" var="s">
				<tr>
					<td>${s.studentId}</td>
					<td>${s.studentName}</td>
					<td>${s.studentAge}</td>
					<td>${s.email}</td>
					<td>${s.phoneNumber}</td>
					<td>${s.studentDept}</td>
					<td>${s.studentGender}</td>
					<!--<td>${s.languages}</td>-->
				
					<td> <c:forEach var="lang" items="${s.languages}" >
					${lang}</c:forEach></td>
					<td><img alt="No Photo" width="100 height=300"
						src="data:image/jpg;base64,${s.studentPicture}"></img></td>
					<td><a href="updatestudent/${s.studentId}">Edit</a></td>
					<td><a href="deletestudent/${s.studentId}">Delete</a></td>
				</tr>
			</c:forEach>



		</table>
		<div class="back">
		<a href="homepage">Home Page</a>
		</div>
	</div>
</body>
</html>