<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
nav{
text-align: center;
}
nav>ul
{
list-style: none;

}

nav>ul>li
{
display: inline-block;
margin: 10px;
padding: 10px;
box-shadow: 5px 5px 5px 5px;
background-color: gold;
border-radius: 10px;
}
nav>ul>li>a
{
text-decoration: none;
font-family: fantasy;
font-size: xx-large;

}

nav>ul>li:hover{
background-color: green;
transition: all 4s;
transform: scale(2,2)
}
</style>
</head>
<body>

<nav>
<ul>
<li><a href=''>Accueil</a></li>
<li><a href=''>About</a></li>
<li><a href=''>Contact</a></li>
</ul>
</nav>