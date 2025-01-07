<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../required/connect.jsp" %>

<%! String nm,lk,desc,cat; 

 %>

<%
	nm=request.getParameter("name");
	lk=request.getParameter("link");
	desc=request.getParameter("description");
	cat=request.getParameter("category");
	
	
	PreparedStatement ps=con.prepareStatement("insert into page_links(page_name,url,description,category)values(?,?,?,?)");
	ps.setString(1,nm);
	ps.setString(2,lk);
	ps.setString(3,desc);
	ps.setString(4,cat);
	
	int x=ps.executeUpdate();
	
if(x>0)
	{
		%>
		<script>
		if(confirm("Added to link page"))
		{
			location="addlinks.jsp";
		}
		else
		{
			location="addlinks.jsp";
		}
		</script>
		
		<%
	}
	else
	{
		%>
		<script>
		if(confirm("error"))
		{
			location="addlinks.jsp";
		}
		else
		{
			location="addlinks.jsp";
		}
		</script>
		
		<%
		
	}

%>