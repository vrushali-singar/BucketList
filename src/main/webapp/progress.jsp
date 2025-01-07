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
p

{
font-weight: bold;
  font-style: italic;
  text-decoration: underline;
}
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<%@ include file="required/connect.jsp" %>
<%! String unm; %>

<%
	unm=session.getAttribute("username").toString();
//pending wishes

	PreparedStatement ps=con.prepareStatement("select * from wish where uname=? and status='pending'");
	ps.setString(1,unm);
	
	ResultSet rs=ps.executeQuery();

	//completed wishes

	PreparedStatement sp=con.prepareStatement("select * from wish where uname=? and status='completed'");
	sp.setString(1,unm);
	
	ResultSet sr=sp.executeQuery();

//	rs.next();
	PreparedStatement vr=con.prepareStatement("select count(id) as num_wishes from wish where uname=?");
	vr.setString(1,unm);
	
	ResultSet ct = vr.executeQuery();
	ct.next();
	int numWishes = ct.getInt("num_wishes");

	
	%>
<title>WhishList</title>
</head>
<body>
<header>
		<nav>
			<ul>
				<li><a href="frmprofile.jsp">My Profile</a></li>
				<li><a href="memories.jsp">Memories Gallary</a></li>
				<li><a href="addwish.jsp">Add wish</a></li>
				<li><a href="showinspiration.jsp">Inspiration</a></li>
				<li><a href="linkpage.jsp">Usefull websites</a></li>
				<li><a href="index.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>
	<p>Total Number of wishes: <%= numWishes %></p>
	

<div class=container>
	<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
	<h3>Pending wishes</h3>
	
		
		<div class=col-12>
			<table class="table table-striped">
		
				
				
				<tr><th>Title</th><th>Category</th><th>Description</th><th>Deadline</th></tr>
				
				
				<%
					while(rs.next())
					{
						%>
						<tr><td><%=rs.getString(5)%> </td>
						<td><%=rs.getString(6)%></td> 
						<td><%=rs.getString(2)%></td> 
						 <td><%=rs.getString(3)%></td>
						 
						
						<%
					}
				%>
			</table>		
		</div>
	</div>
	
	<div class=container>
	<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
	<h3>Completed wishes</h3>
	
		
		<div class=col-12>
			<table class="table table-striped">
		
				
				
				<tr><th>Title</th><th>Category</th><th>Description</th><th>Deadline</th></tr>
				
				
				<%
					while(sr.next())
					{
						%>
						<tr><td><%=sr.getString(5)%> </td>
						<td><%=sr.getString(6)%></td> 
						<td><%=sr.getString(2)%></td> 
						 <td><%=sr.getString(3)%></td>
						 
					
						<%
					}
				%>
			</table>		
		</div>
	</div>
</body>
</html>