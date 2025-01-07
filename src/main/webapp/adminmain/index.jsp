<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>admin</title>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<script
	src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
</head>
<body>
	
	<div class="container my-4">
		<div class=row>
			<div class=col-12>
				<h2 class="text-center animate__animated animate__flip">Admin Login</h2>
			</div>
		</div>


		<div class="row justify-content-center my-4">
			<div
				class="col-5  shadow p-3 mb-5 bg-white rounded">
				<form action=loginData.jsp method=post>
					<div class="form-group">
						<label for="exampleInputEmail1">Username</label> <input type="text"
							name=txtUname class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Password</label> <input type="password"
							name=txtPassword class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp">
					</div>
					

					<input type="submit" class="btn btn-warning" value=Login>
					<hr>
					
				</form>
			</div>


		</div>


	</div>




</body>



</html>



