<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="helloworld.*" %>
<%@ page import="java.util.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
body{
background : silver;
}
table , th ,td {border: 1px solid black; padding: 15px}
tr:nth-child(even) {background-color:grey}
tr:nth-child(odd) {background-color:lightgrey}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results</title>
</head>
<body>
<% 
    String selection = request.getParameter("selection");
    String vsa = request.getParameter("vsa");
    Alumni a = new Alumni();
    BracketlessArrayList<Alumni> list = new BracketlessArrayList<Alumni>();
   
    list = a.search(selection,vsa);
    int i=1;
    %>
    <%if(list.isEmpty()==true){ %>
    <div class="container">
            <h2>Alerts</h2>
            <div class="alert alert-danger">
             <strong>Sorry!</strong> No matches found for your search
             </div>
             </div>
    <a href="search.jsp"><h3>Click here to re-search</h3></a>
    <%} else{ %>
    <h2><%out.print(list.size());%> result(s) found for your Search</h2>
<table style="margin-top:0px; margin-left:25%";>
  <thead >
    <tr style="background-color:grey"><th>SL NO.</th><th>Name</th><th>City</th><th>Company</th><th>Research</th><th>Email</th></tr>
  </thead>
  <tbody>
  <%for(Alumni e:list){%><h1 style="color:green"><tr><td><%=i %></td><td><%=e.getName()%></td><td><%=e.getCity()%></td><td><%=e.getCompany()%></td><td><%=e.getResearch()%></td><td><%=e.getEmailid()%></td></tr><%i++;%></h1><%}} %>
  </tbody>
</table>   
<a  href=<% out.print(session.getAttribute("wholog")+".jsp"); %>><h3 >Click here to return to main page</h3></a>
</body>
</html>