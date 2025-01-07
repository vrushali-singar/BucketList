<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../required/connect.jsp" %>

<%! String id; %>

<%
	id=request.getParameter("id");

	
	PreparedStatement ps=con.prepareStatement("delete from page_links where id=?");
	ps.setString(1,id);
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script>
		if(confirm("Link deleted "))
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
		if(confirm("Unable to delete link"))
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