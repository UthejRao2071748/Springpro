<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Home Page</title>
<style>
body {
	font-size: 20px;
	<--background-image: url("img1.jpg");-->
	background-size: 100%;
	background-repeat: no-repeat;
}
.navbar {
	background-color: hsl(0, 40%, 50%);
	overflow: hidden;
}
.navbar a {
	float: left;
	color: #ff6347;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
	font-size: 17px;
}
.navbar a:hover {
	background-color: #ddd;
	color: blue;
}
.navbar a.active {
	background-color: #04AA6D;
	color: yellow;
}
</style>
</head>
<body>

	<div class="navbar">

		<a class="active" href="getallstudents">View Students</a> 
		<a href="getstudentform">Info by Id</a>
			  <a href="logout">Logout</a>
	</div>

</body>
</html>