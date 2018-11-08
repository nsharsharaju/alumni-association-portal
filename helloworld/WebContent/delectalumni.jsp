<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="helloworld.*" %>    
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
String rollno = request.getParameter("vsa");

Admin a = new Admin();

boolean cd = a.delect(rollno);

if(cd==true){%>

<div class="container">
            <h2>Alerts</h2>
            <div class="alert alert-success">
             <strong>Success!</strong> You have delected the alumni
             </div>
             </div><a href=<% out.print(session.getAttribute("wholog")+".jsp");%>><h3>Click here to go main page</h3></a><%} 

else{%>
	
	<div class="container">
    <h2>Alerts</h2>
    <div class="alert alert-danger">
     <strong>danger!</strong> The alumni with that do not exists
     </div>
     </div><a href="delectalumniui.jsp"><h3>Click here to retry</h3></a>
	
<% }%>


</body>
</html>