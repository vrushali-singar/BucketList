<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../required/connect.jsp" %>

<%! String uname,upass; %>

<%
	uname=request.getParameter("txtUname");
	upass=request.getParameter("txtPassword");
	
	PreparedStatement ps=con.prepareStatement("select count(*) from admin where aname=? and apass=?");
	ps.setString(1,uname);
	ps.setString(2,upass);
	ResultSet rs=ps.executeQuery();
	rs.next();
	int x=rs.getInt(1);
	if(x==0)
	{
		%>
		<script>
		if(confirm("Either username or password is Wrong"))
		{
			location="index.jsp";
		}
		else
		{
			location="index.jsp";
		}
		</script>
		
		<%
	}
	else
	{
		session.setAttribute("nrcadmn",uname);
		
		%>
		<script>
		if(confirm("Login Successful"))
		{
			location="admindash.jsp";
		}
		else
		{
			location="admindash.jsp";
		}
		</script>
		
		<%
		
	}

%>