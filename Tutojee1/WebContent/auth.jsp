<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<script src="js/bootstrap.js"  ></script>
</head>
<body>
<%
String etat="";
if(request.getParameter("cpt")!=null){
if(Integer.parseInt(request.getParameter("cpt"))>3)
{
	etat="disabled='disabled'";
	}
}
%>

<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
<form action="Test" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="text" name="log" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary" <%=etat %>>Submit</button>
</form>
</div>
</div>

<%
if(request.getParameter("res")!=null && request.getParameter("cpt")!=null)
{
	if(request.getParameter("res").equals("err"))	
	{
		%>
		<p >userName or Password is incorrect.....!</p>
		<p> tentative numero: <%=request.getParameter("cpt") %>
		<%
	}
}
%>
<hr/>

<form action="Adduser" method="post">
login:<input type="text" name="log"/><br/>
password:<input type="password" name="pass"/><br/>
Role: <select name="role">
<option>admin</option>
<option>guest</option>
</select>
<input type="submit" value="envoyer"/>
</form>

</body>
</html>