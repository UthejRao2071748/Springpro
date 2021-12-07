<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student Details</title>
<style>
body {
	font-size: 20px;
	background-color: hsl(156, 57%, 74%);
}
td {
	padding: 1px 50px;
}
</style>

</head>
<body>
	<div class="details" align="center">
	<h1 style="color:red">Student Details</h1>
		<table>
			<tr>

				<td><h3>Student ID : ${student.studentId}</h3>
					<h3>Student Name : ${student.studentName}</h3>
					<h3>Student Password : ${student.studentPassword}</h3>
					<h3>Student Age : ${student.studentAge}</h3>
					<h3>Student Email : ${student.email}</h3>
					<h3>Student Phone Number : ${student.phoneNumber}</h3>
					<h3>Student Department : ${student.studentDept}</h3>
					<h3>Student Gender : ${student.studentGender}</h3>
					<h3>Languages Known :
						<c:forEach var="lang" items="${student.languages}">
					${lang}</c:forEach>
					</h3></td>
				<td>
					<h3>
						<img width="300" height="300"
							src="data:image/jpg;base64,${student.studentPicture}"></img>
					</h3>
				</td>
			</tr>
		</table>
		<a href="homepage">Home Page</a>

	</div>
</body>
</html>