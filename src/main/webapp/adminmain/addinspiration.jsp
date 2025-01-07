<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>addinspiration
	</title>
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
	<header>
		<nav>
			<ul>
				
				<li><a href="admindash.jsp">Dashboard</a></li>
				<li><a href="addlinks.jsp">Add Links</a></li>
				<li><a href="index.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>
	
	<main>
	
		<h1>Add inspirations for user</h1>
	<form action=addinspirationdata.jsp method=post>
			<label for="name">Inspiration Name:</label>
			<input type="text" id="name" name="name" required><br><br>

			
			<label for="image">Image</label>
			<input type="file"  id="fnameId"  name=txtFname required> <br><br>
							
				
			<label for="description">Description:</label>
			<textarea id="description" name="description" rows="4"></textarea><br><br>

			<input type="submit" value="Add to Inspiration Page">
		</form>
	</main>
</body>
</html>