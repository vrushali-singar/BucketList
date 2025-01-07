<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../required/connect.jsp" %>

<%! String nm,txtFname,desc; 

 %>

<%
	nm=request.getParameter("name");
txtFname=request.getParameter("txtFname");
txtFname="uploads/"+txtFname;
	desc=request.getParameter("description");
	
	
	
	PreparedStatement ps=con.prepareStatement("insert into inspiration(title,image_url,description)values(?,?,?)");
	ps.setString(1,nm);
	ps.setString(2,txtFname);
	ps.setString(3,desc);
	
	int x=ps.executeUpdate();
	
if(x>0)
	{
		%>
		<script>
		if(confirm("Added to inspiration page"))
		{
			location="addinspiration.jsp";
		}
		else
		{
			location="addinspiration.jsp";
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
			location="addinspiration.jsp";
		}
		else
		{
			location="addinspiration.jsp";
		}
		</script>
		
		<%
		
	}

%>