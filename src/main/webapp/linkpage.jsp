<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">
<title></title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/dashboard/">



<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<%@ include file="required/connect.jsp" %>

<style>
body
{
background-image:url("images/fire.jpg");
	background-size:cover;
}
</style>


<!-- Custom styles for this template -->

</head>
<body>

	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3 " href="#">Usefull websites to fulfill your wishes</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link"
				href="signout.jsp"> Sign out</a></li>
		</ul>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="frmprofile.jsp">
								<span data-feather="shopping-cart"></span> My Profile
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="list.jsp"> <span
								data-feather="file"></span> Your Bucketlist
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="addwish.jsp"> <span
								data-feather="file"></span>Add wish
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="showinspiration.jsp">
								<span data-feather="shopping-cart"></span> Inspirations
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="memories.jsp">
								<span data-feather="shopping-cart"></span> Memories
						</a></li>
						
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="login.jsp"> <span
								data-feather="bar-chart-2"></span> Log Out
						</a></li>
					</ul>
</div>
			</nav>

			<div class=container>
	<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
	<h3>List Of Websites</h3>
	<%
	
		PreparedStatement sp=con.prepareStatement("select * from page_links");
		ResultSet sr=sp.executeQuery();
		
		%>
		
		<div class=col-12>
			<table class="table table-striped">
			
		
				
				
				<tr><th>Page name</th><th>URl</th><th>description</th><th>category</th></tr>
				
				
				<%
					while(sr.next())
					{
						%>
						<tr><td><%=sr.getString(2)%></td><td><a href=<%=sr.getString(3)%>><%=sr.getString(3)%></a></td>  <td><%=sr.getString(4)%></td><td><%=sr.getString(5)%></td></tr>
						<%
					}
				%>
			</table>		
		</div>
	</div>
</div>

	
</body>
</html>
