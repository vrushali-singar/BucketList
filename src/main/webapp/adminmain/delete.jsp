<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../required/connect.jsp" %>

<%! String id; %>

<%
	id=request.getParameter("id");

	
	PreparedStatement ps=con.prepareStatement("delete from inspiration where id=?");
	ps.setString(1,id);
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script>
		if(confirm("Post Deleted "))
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
	else
	{	
		%>
		<script>
		if(confirm("Unable to delete post"))
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