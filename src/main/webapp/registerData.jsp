<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%! String mb,nm,em,pass; %>

<%
	mb=request.getParameter("txtMobile");
	em=request.getParameter("txtEmail");
	nm=request.getParameter("txtUname");
	pass=request.getParameter("txtPassword");
	PreparedStatement ps=con.prepareStatement("insert into b_user(uname,upass,umob,email)values(?,?,?,?)");
	ps.setString(1,nm);
	ps.setString(2,pass);
	ps.setString(3,mb);
	ps.setString(4,em);
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script>
		if(confirm("Registration Successful"))
		{
			location="login.jsp";
		}
		else
		{
			location="login.jsp";
		}
		</script>
		
		<%
	}
	else
	{
		%>
		<script>
		if(confirm("Error In Registration"))
		{
			location="register.jsp";
		}
		else
		{
			location="register.jsp";
		}
		</script>
		
		<%
		
	}

%>