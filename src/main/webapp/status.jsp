<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%! String id; %>




<%
	id=request.getParameter("id");
    String un=session.getAttribute("username").toString();
    PreparedStatement ps=con.prepareStatement("UPDATE wish SET status ='completed' WHERE id=?");
	ps.setString(1,id);
	
	int x=ps.executeUpdate();
	if(x>0)
	{
		
		response.sendRedirect("wishlist.jsp");
	}
%>
	