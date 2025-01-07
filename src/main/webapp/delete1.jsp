<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="required/connect.jsp" %>

<%

int id;
id=Integer.parseInt(request.getParameter("id"));
String un=session.getAttribute("username").toString();
		//out.println(un);	
PreparedStatement ps=con.prepareStatement("delete from wish where id=?");		

ps.setInt(1,id);
ps.executeUpdate();
response.sendRedirect("whishlist.jsp");

%>
