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
<title>NR Classes LLP</title>

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
<!-- Favicons -->
<script>
	function loadProfile() {
		ob = new XMLHttpRequest();
		ob.open("GET", "frmProfile.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4) {
				//alert(ob.responseText);	
				document.getElementById("updateFrm").innerHTML = ob.responseText;

			}
		}
	}
	
	function loadcart()
	{
		ob = new XMLHttpRequest();
		ob.open("GET", "showmycart.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4) {
				//alert(ob.responseText);	
				document.getElementById("updateFrm").innerHTML = ob.responseText;

			}
		}
	}
</script>

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
</style>


<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">
</head>
<body>

	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">NR
			Classes LLP</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<span style="color: cyan;">Welcome <%=session.getAttribute("username")%></span>
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
							class="nav-link active btn btn-primary" href="customerdash.jsp">
								<span data-feather="home"></span> Dashboard <span
								class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="showproducts.jsp"> <span
								data-feather="file"></span> Show Products
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="#"> <span
								data-feather="file"></span> My Recent Orders
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" href="displayproduct.jsp">
								<span data-feather="shopping-cart"></span> My Past Orders
						</a></li>
						<li class="nav-item"><a onClick="loadProfile()"
							class="nav-link btn btn-secondary my-2 href="#"> <span
								data-feather="users"></span> My Profile
						</a></li>
						<li class="nav-item"><a
							class="nav-link btn btn-secondary my-2" onClick="loadcart()"> <span
								data-feather="bar-chart-2"></span> Show My Cart
						</a></li>

					</ul>


				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4"
				id=updateFrm>

				<div class="container my-4">
					<div class="row  my-4">
						<div class="col-3 offset-2">
							<div
								class="card text-white bg-dark mb-3 animate__animated animate__flipInY"
								style="max-width: 18rem;">
								<div class="card-header">Your Past Orders</div>
								<div class="card-body">
									<h5 class="card-title">Till Today</h5>
									<p class="card-text">100</p>
								</div>
							</div>
						</div>
						<div class="col-3 mx-2">
							<div
								class="card text-white bg-dark mb-3 animate__animated animate__flipInX"
								style="max-width: 18rem;">
								<div class="card-header">New Items</div>
								<div class="card-body">
									<h5 class="card-title">Current Trend</h5>
									<p class="card-text">150</p>
								</div>
							</div>
						</div>
						<div class="col-3 mx-2">
							<div
								class="card text-white bg-dark mb-3 animate__animated animate__flip"
								style="max-width: 18rem;">
								<div class="card-header">Your Pending Orders</div>
								<div class="card-body">
									<h5 class="card-title">Track Order</h5>
									<p class="card-text">2</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</main>
			

		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.6/assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<script src="/docs/4.6/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
	<script src="dashboard.js"></script>
</body>
</html>
