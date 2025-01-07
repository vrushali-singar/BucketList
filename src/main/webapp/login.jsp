<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style> @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@200&family=Merriweather&display=swap'); </style>

<style>

body
{
	background-image:url("uploads/Trek2.jpg");
	background-size:cover;
	color:white;
}
table
{
	margin-top:200px;
	margin-left:600px;
	
	background-color:rgba(0,0,0,0.5);
	padding:16px;
}
.inp
{
	width:200px;
	padding:5px;
	font-family: 'Kanit', sans-serif;
	
}
#btn
{
	border:5px solid orange;
	background-color:orange;
	width:212px;
}
a
{
	text-decoration:none;
	color:white;
}
th
{
	font-family: 'Kanit', sans-serif;
	font-size:20px;
	margin-bottom:20px;
	
	padding-bottom:10px;
}

</style>


</head>
<body>

<form action=loginData.jsp method=post>
	<table cellspacing=10px>
		<tr><th>User Login</th></tr>
		<tr><td><input type=text name=txtUname class="inp" placeholder=Username></td></tr>
		<tr><td><input type=password name=txtPassword class="inp" placeholder=Password></td></tr>
		<tr><td><input type=submit value="Login" class="inp" id=btn></td></tr>
		<tr><td><input type=reset value="Clear" class="inp" id=btn></td></tr>
		<tr><td><a href=register.jsp>Are you new User? Register here </a></td></tr>
	</table>
</form>
	
</body>
</html>