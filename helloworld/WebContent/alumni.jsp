<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="helloworld.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>

body {
  font: 12px/20px 'Lucida Grande', Verdana, sans-serif;
  color: #404040;
  background: silver;
}

input, textarea, select, label {
  font-family: inherit;.
  font-size: 12px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

table , th ,td {border: 1px solid black; padding: 15px}
tr:nth-child(odd) {background-color:grey}
tr:nth-child(even) {background-color: lightgrey}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alumni Success Message</title>
</head>

<body>

<% Date date = new Date();%>

<div class="container">
<h2>Alerts</h2>
<div class="alert alert-success">
<strong>Success!</strong> Logged in as <%=session.getAttribute("user") %>
</div>
</div>

<h3>The time of your login is <%= date.toString() %></h3>


<a href="search.jsp"><h3>Click Here to Search for Alumni</h3></a>

<a href="alumniupdateui.jsp"><h3>Click here to Update details</h3></a>

<a href="changepasswordui.jsp"><h3>Click here to change password</h3></a>

<a href="postnewsfeedui.jsp"><h3>Click here to Post</h3></a>

<a href="hello.jsp"><h3>Click here to logout</h3></a>

<% Alumni a = new Alumni();
BracketlessArrayList<Newsfeed> list = new BracketlessArrayList<Newsfeed>();
list = a.retrivefeed();
%>

<h1 style="color: grey;postion:relative;left:25%">News Feed</h1>

<table style="margin-top:0px; margin-left:25%";>
<thead >
<tr style="background-color: lightgrey"><th>Alumni Name</th><th>Post date</th><th>Post</th></tr>
</thead>
<tbody>
<%for(Newsfeed e:list){%><h1 style="color:green"><tr><td><%=e.getUser()%></td><td><%=e.getDate()%></td><td><%=e.getPost()%></td></tr></h1><%} %>
</tbody>
</table>

</body>
</html>
