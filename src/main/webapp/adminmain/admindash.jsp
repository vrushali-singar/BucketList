<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>header {
	background-color: #333;
	color: #fff;
	padding: 20px;
}
nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	
}
nav li {
	margin:  0 50px;
	
}
nav a {
	color: #fff;
	text-decoration: none;
	font-size: 20px;
	
}
h2 {
  position: static;
  right: ;
  top: 50%;

}
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	<%@ include file="../required/connect.jsp" %>
<title> Admin dashaord</title>
</head>
<body>
<header>
		<nav>
			<ul>
				<h2>Admin Dashboard</h2>
				<li><a href="addinspiration.jsp">Add Inspiration</a></li>
				<li><a href="addlinks.jsp">Add Links</a></li>
				<li><a href="users.jsp">Registred Users</a></li>
				<li><a href="index.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>

<div class=container>
	<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
	<h3>List of Posts</h3>
	<%
	
		PreparedStatement ps=con.prepareStatement("select * from inspiration order by id");
		ResultSet rs=ps.executeQuery();
		
		%>
		<div class=col-12>
			<table class="table table-striped">
			<tr><td colspan=7></td><td><a href=addinspiration.jsp class="btn btn-info">Add Inspiration</a></td></tr>
		
				
				
				<tr><th>Title</th><th>Image</th><th>Details description</th></tr>
				
				
				<%
					while(rs.next())
					{
						%>
						<tr><td><%=rs.getString(2)%></td> <td><img src="../<%=rs.getString(3)%>" height=100px width=100px></td> <td><%=rs.getString(4)%></td><td><a href=delete.jsp?id=<%=rs.getInt(1)%> class="btn btn-danger mx-1">Delete</a></td></tr>
						<%
					}
				%>
			</table>		
		</div>
	</div>
</div>
<div class=container>
	<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
	<h3>List Of links</h3>
	<%
	
		PreparedStatement sp=con.prepareStatement("select * from page_links order by id");
		ResultSet sr=sp.executeQuery();
		
		%>
		
		<div class=col-12>
			<table class="table table-striped">
			<tr><td colspan=7></td><td></td><td><a href=addlinks.jsp class="btn btn-info">Add Links</a></td></tr>
		
				
				
				<tr><th>Page name</th><th>URl</th><th>description</th></tr>
				
				
				<%
					while(sr.next())								
					{
						%>
						<tr><td><%=sr.getString(2)%></td> <td><a href=<%=sr.getString(3)%>><%=sr.getString(3)%></a></td>  <td><%=sr.getString(4)%></td><td></td><td><a href=delete1.jsp?id=<%=sr.getInt(1)%> class="btn btn-danger mx-1">Delete</a></td></tr>
						<%
					}
				%>
			</table>		
		</div>
	</div>
</div>
</body>
</html>