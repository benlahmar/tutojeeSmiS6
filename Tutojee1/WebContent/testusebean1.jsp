<%@page import="com.util.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u1" class="com.util.User" scope="session"></jsp:useBean>

<div>
Login :<%=u1.getLog() %>
</div>

<div>
<% u1.setLog("moi"); %>
Login aprés modif :<%=u1.getLog() %>
</div>

<jsp:forward page="auth.jsp"></jsp:forward>
</body>
</html>