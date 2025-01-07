<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%! String mb,nm,em,pass; %>

<%
	mb=request.getParameter("txtMobile");
	em=request.getParameter("txtEmail");
	nm=request.getParameter("txtUname");
	pass=request.getParameter("txtPassword");
	
	PreparedStatement ps=con.prepareStatement("update b_user set upass=?,umob=?,email=? where uname=?");
	ps.setString(1,pass);
	ps.setString(2,mb);
	ps.setString(3,em);
	ps.setString(4,nm);
	
	
	
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script>
		if(confirm("Profile Updated"))
		{
			location="frmprofile.jsp";
		}
		else
		{
			location="frmprofile.jsp";
		}
		</script>
		
		<%
	}
	else
	{
		%>
		<script>
		if(confirm("Error In Updation"))
		{
			location="frmprofile.jsp";
		}
		else
		{
			location="frmprofile.jsp";
		}
		</script>
		
		<%
		
	}

%>