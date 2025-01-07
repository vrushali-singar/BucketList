<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>addwish
	</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="list.jsp">My BucketList</a></li>
				
				
				
				<li><a href="frmprofile.jsp">My Profile</a></li>
			<li><a href="addmemory.jsp">Add Memories</a></li>
				<li><a href="showinspiration.jsp">Inspirations</a></li>
				<li><a href="linkpage.jsp">Useful Websites</a></li>
				<li><a href="login.jsp">LogOut</a></li>
			
			</ul>
		</nav>
	</header>
	
	<main>
	
		<h1>Make a Wish</h1>
	<form action=addwishdata.jsp method=post>
			<label for="name">Wish Name:</label>
			<input type="text" id="name" name="name" required><br><br>

			<label for="category">Category:</label>
			<select id="category" name="category">
				<option value="Travel">Travel</option>
				<option value="Career">sports</option>
				<option value="Food">Food</option>
				<option value="Education">Education</option>
				<option value="Health">Health</option>
				<option value="Other">Other</option>
			</select><br><br>

			<label for="date">Date:</label>
			<input type="date" id="date" name="date" required><br><br>

			<label for="description">Description:</label>
			<textarea id="description" name="description" rows="4"></textarea><br><br>

			<input type="submit" value="Add to Bucket">
			<%=session.getAttribute("username").toString()%>
		</form>
	</main>
</body>
</html>