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
<%! String unm; %>

<%
	unm=session.getAttribute("username").toString();

	PreparedStatement ps=con.prepareStatement("select * from memories where uname=?");
	ps.setString(1,unm);
	
	ResultSet rs=ps.executeQuery();

//	rs.next();
	
	%>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
body {
			background-image: url('images/city.jpg');
			background-repeat: repeat-y;
			background-size: cover;
			background-attachment: fixed;
			
		}
h2
{
	color:white;
	font-size:2rem;
	font-weight:bold;
	line-height:1.2;
	margin-top:1.5rem;
	margin-bottom:1rem;
}

</style>


<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">
</head>
<body>

	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<h2>Your  Memories !!!  </h2>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		
	</nav>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="frmprofile.jsp"> <span
								data-feather="file"></span>My Profile
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="list.jsp"> <span
								data-feather="file"></span> MY Bucketlist
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="addmemory.jsp"> <span
								data-feather="file"></span>Add Memories
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
							class="nav-link btn btn-secondary my-2" href="linkpage.jsp">
								<span data-feather="shopping-cart"></span> Usefull websites
						</a></li>
						
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="login.jsp"> <span
								data-feather="bar-chart-2"></span> Log Out
						</a></li>

					</ul>


				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4"
				id=updateFrm>

				<div class="container ml-sm-auto col-lg-10 px-md-4">
				<div class="row">
				
<%
	

	while(rs.next())
	{
	%>	
					<div class="col-4">
						<div class="card my-4">
							<img src="<%=rs.getString(3) %>" class="card-img-top" alt="..." height=200px widhth=200px>
							<div class="card-body">
								
								<p class="card-text">Comment: <%=rs.getString(4) %></p>
								<p class="card-text">Date: <%=rs.getString(5) %></p>
								</div>
							
						</div>

					</div>
			<%
	}
	%>
				</div>
			</div>
				
				
							</main>

		</div>
	</div>


	
</body>
</html>
