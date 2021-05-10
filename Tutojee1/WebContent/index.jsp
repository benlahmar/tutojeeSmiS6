<%@page import="com.util.User"%>
<%@page import="java.util.List"%>
<%@page import="com.util.UserManager"%>
<%@page import="sun.util.resources.LocaleData"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
UserManager um=new UserManager();
String abc="SMI";
LocalDate d=LocalDate.now();


User ut=(User)session.getAttribute("user");
%>

<div> 
Bonjour  <%=ut.getLog() %> vous ete connecté entant que <%=ut.getRole() %>
<hr/>
</div>



<%

if(request.getParameter("op")!=null)
{
	if(request.getParameter("op").equals("delete"))
	{
		int id = Integer.parseInt(request.getParameter("id"));
		um.deleteUser(id);
	}
	
	
}

%>

<%
List<User> us=um.allUsers();
%>
<table id="tabuser">
	<thead>
		<tr>
			<th>ID</th>
			<th>UserName</th>
			<th>Password</th>
			<th>Role</th>
			<th>Action</th>
			
		</tr>
	</thead>
	<tbody>
		<%
		for(User u: us)
		{
		%>
		<tr>
		<td><%= u.getId() %> </td>
		<td><%= u.getLog() %> </td>
		<td><%= u.getPass() %> </td>
		<td><%= u.getRole() %> </td>
		<% if(ut.getRole().equalsIgnoreCase("admin")) {%>
			<td> <a href='?op=delete&id=<%= u.getId()%>'>delete</a> </td>
		<%} %>
		</tr>
		<%} %>
	</tbody>
	<tfoot>
		<tr>
			<th>A</th>
			<th>B</th>
			<th>C</th>
			<th>D</th>
			<th>E</th>
		</tr>
	</tfoot>
</table>
</body>
</html>