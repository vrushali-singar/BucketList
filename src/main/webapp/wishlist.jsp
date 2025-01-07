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
h3
{
 
  
  display: block;
  margin: 0 auto;
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

	PreparedStatement ps=con.prepareStatement("select * from wish where uname=?");
	ps.setString(1,unm);
	
	ResultSet rs=ps.executeQuery();

//	rs.next();

//total number of wish
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
				<li><a href="progress.jsp">Progress</a></li>
				<li><a href="showinspiration.jsp">Inspiration</a></li>
				<li><a href="showlinks.jsp">Usefull websites</a></li>
				<li><a href="index.jsp">LogOut</a></li>
			</ul>
		</nav>
	</header>

<div class=container>
	<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
	<h3>Your Bucketlist ! ! !</h3>
	
		
		<div class=col-12>
			<table class="table table-striped">
			<tr><td colspan=7><p>Total wishes in your bucketlist = <%= numWishes %></p></td><td></td><td><a href=addwish.jsp class="btn btn-info">Add Wish</a></td></tr>
		
				
				
				<tr><th>Title</th><th>Category</th><th>Description</th><th>Deadline</th><th>Status</th></tr>
				
				
				<%
					while(rs.next())
					{
						%>
						<tr><td><%=rs.getString(5)%> </td>
						<td><%=rs.getString(6)%></td> 
						<td><%=rs.getString(2)%></td> 
						 <td><%=rs.getString(3)%></td>
						 <td><%=rs.getString(4)%></td>
						 <td></td><td><a href=status.jsp?id=<%=rs.getInt(1)%> class="btn btn-success mx-1">Mark Done</a></td>
						 <td></td><td><a href=deletewish.jsp?id=<%=rs.getInt(1)%> class="btn btn-danger mx-1">Delete</a></td></tr>
						<%
					}
				%>
				
			</table>		
		</div>
	</div>
</body>
</html>