<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.helper.FactoryProvider" %>
     <%@page import="org.hibernate.Session" %>
     <%@page import="org.hibernate.Query" %>
     <%@page import="com.entities.*" %>
     <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    
    <br>
    <h1 class="text-uppercase">All Notes:</h1>
    <%
    Session s=FactoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
    for(Note note:list)
    {
    	out.println(note.getId()+":"+note.getTitle()+"<br>");
    }
    
    s.close();
    
    %>
   </div>
</body>
</html>