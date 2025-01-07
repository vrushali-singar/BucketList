<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%! String unm,ups; %>

<%
	unm=request.getParameter("txtUname");
	ups=request.getParameter("txtPassword");
	
	PreparedStatement ps=con.prepareStatement("select count(*) from b_user where uname=? and upass=?");
	ps.setString(1,unm);
	ps.setString(2,ups);
	ResultSet rs=ps.executeQuery();
	rs.next();
	if(rs.getString(1).equals("1"))
	{
		
		session.setAttribute("username",unm);
%>
	<script>
		if(confirm("Login Successful"))
		{
			location="addwish.jsp";
		}
		else
		{
			location="addwish.jsp";
		}
		
	</script>	
	
	
<%		
	}
	else
	{
%>
	
	<script>
		if(confirm("invalid Username or Password"))
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
	
	
	
	
	
%>