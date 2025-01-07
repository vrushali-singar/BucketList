<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>addMemories
	</title>
<link rel="stylesheet" type="text/css" href="style5.css">
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="frmprofile.jsp">My Profile</a></li>
				<li><a href="addwish.jsp">Add Wish</a></li>
				<li><a href="list.jsp">My BucketList</a></li>
				<li><a href="memories.jsp">Memories gallery</a></li>
				<li><a href="login.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>
	
	<main>
	
		<h1>Add Your Bucketist Memories</h1>
	<form action=memorydata.jsp method=post>
			

			
			<label for="image">Image</label>
			<input type="file"  id="fnameId"  name=txtFname required> <br><br>
							
				
			<label for="description">Comment:</label>
			<textarea id="comment" name="comment" rows="4"></textarea><br><br>

			<input type="submit" value="Add to Memoriese">
		</form>
	</main>
</body>
</html>