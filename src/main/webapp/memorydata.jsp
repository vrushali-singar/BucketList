<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="required/connect.jsp" %>

<%! String cmt,txtFname,un; 

 %>

<%
	cmt=request.getParameter("comment");
txtFname=request.getParameter("txtFname");
txtFname="uploads/"+txtFname;
un=session.getAttribute("username").toString();
	
	
	
	PreparedStatement ps=con.prepareStatement("insert into memories(comment,image,uname)values(?,?,?)");
	ps.setString(1,cmt);
	ps.setString(2,txtFname);
	ps.setString(3,un);
	
	int x=ps.executeUpdate();
	
if(x>0)
	{
		%>
		<script>
		if(confirm("Added to memories"))
		{
			location="addmemory.jsp";
		}
		else
		{
			location="addmemory.jsp";
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
			location="addmemory.jsp";
		}
		else
		{
			location="addmemory.jsp";
		}
		</script>
		
		<%
		
	}

%>