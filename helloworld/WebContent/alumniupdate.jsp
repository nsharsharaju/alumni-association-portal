<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="helloworld.*" %>
<%@ page import="java.util.*" %> 
<%@ page import="java.sql.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Alumni a = new Alumni();

a.update(request.getParameter("selection"),(String)session.getAttribute("user"),request.getParameter("vsa"));
%>
<div class="container">
<h2>Alerts</h2>
<div class="alert alert-success">
 <strong>Success!</strong> Updated your details
 </div>
 </div><a href=<% out.print(session.getAttribute("wholog")+".jsp"); %>><h3>Click here to enter the main page</h3></a>




</body>
</html>