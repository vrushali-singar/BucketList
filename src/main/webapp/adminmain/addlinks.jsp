<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>addLinks
	</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<nav>
			<ul>
				
				<li><a href="admindash.jsp">Admin Dashboard</a></li>
				<li><a href="addinspiration.jsp">Add Inspirations</a></li>
				<li><a href="index.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>
	
	<main>
	
		<h1>Add Links</h1>
	<form action=addlinkdata.jsp method=post>
			<label for="name">Page Name</label>
			<input type="text" id="name" name="name" required><br><br>
            
            <label for="name">Category</label>
			<input type="text" id="category" name="category" required><br><br>

			
			<label for="name">Provide Link</label>
			<input type="text" id="link" name="link" required><br><br>
							
				
			<label for="description">Description:</label>
			<textarea id="description" name="description" rows="4"></textarea><br><br>

			<input type="submit" value="Add to Link Page">
		</form>
	</main>
</body>
</html>