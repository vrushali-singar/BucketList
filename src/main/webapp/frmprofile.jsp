<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%! String unm; %>

<%
	unm=session.getAttribute("username").toString();

	PreparedStatement ps=con.prepareStatement("select * from b_user where uname=?");
	ps.setString(1,unm);
	
	ResultSet rs=ps.executeQuery();

	rs.next();
	
	%>
	<html>
<head>
<link rel="stylesheet" href="style4.css">
<script src="js/jquery.js"></script>
<script src="js/form_val.js"></script>
</head>
<body>
<header>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="list.jsp">My BucketList</a></li>
				<li><a href="addwish.jsp">Add Wish</a></li>
			
				<li><a href="showinspiration.jsp">Inspirations</a></li>
				<li><a href="linkpage.jsp">Useful Websites</a></li>
				<li><a href="login.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>


<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">My Profile</h1>

</div>

<div class="container my-4">
		<div class=row>
			<div class=col-12>
							</div>
		</div>
 
		<div class="row justify-content-center my-4">
			<div class="col-8  shadow p-3 mb-5 bg-white rounded">
				<form action=updateprofile.jsp method=post>
					<div class="form-group">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							name=txtEmail class="form-control" id="emailId"
							aria-describedby="emailHelp" required onblur="validateEmail(this,document.getElementById('emailErr'),'Invalid Email Address')"
							value="<%=rs.getString(5)%>"
							> <small
							style="color: red;" id=emailErr></small>

					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Mobile</label> <input type="text"
							name=txtMobile class="form-control" id="mobileId"
							aria-describedby="emailHelp" required onblur="validateMobile(this,document.getElementById('mobileErr'),'Invalid Mobile Number')"
								value="<%=rs.getString(4)%>"
							> <small style="color: red;"
							id=mobileErr></small>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Username</label> <input
							type="text" name=txtUname class="form-control" id="unameId"
							aria-describedby="emailHelp" 
							value="<%=rs.getString(2)%>"
							readonly onblur="validateUsername(this,document.getElementById('unameErr'),'Invalid Username')">
				
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Password</label> <input
							type="password" name=txtPassword class="form-control"
							id="txtPassword"
							value="<%=rs.getString(3)%>"
							 aria-describedby="emailHelp" required onblur="validatePassword(this,document.getElementById('passwordErr'),'Week Password','Strong Password')"> <small
							style="color: red;" id=passwordErr></small>
					</div>
					
					
					
					<input type="submit" class="btn btn-warning" value="Update Profile">
					<hr>
					
				</form>
			</div>


		</div>


	</div>
</body>
</html>