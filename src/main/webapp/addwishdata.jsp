<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%! String nm,cat,desc,date,un; %>

<%
    
	nm=request.getParameter("name");
    cat=request.getParameter("category");
	desc=request.getParameter("description");
	date=request.getParameter("date");
	un=session.getAttribute("username").toString();
	
	PreparedStatement ps=con.prepareStatement("insert into wish(title,category_name,description,deadline,uname)values(?,?,?,?,?)");
	
	ps.setString(1,nm);
	ps.setString(2,cat);
	ps.setString(3,desc);
	ps.setString(4,date);
	ps.setString(5,un);
	int x=ps.executeUpdate();
	
if(x>0)
	{
		%>
		<script>
		if(confirm("Added to your bucket"))
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
		if(confirm("error"))
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

%>