<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="helloworld.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body{
background:lightgrey;}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String rollno;
    String post;
    Alumni a;
    Admin b;
    boolean cd;%>
    
<%
 switch((String)session.getAttribute("wholog"))
 {
   case "alumni" :
   {
	   a = new Alumni();
	   rollno = (String)session.getAttribute("user");
	   post = request.getParameter("post");
	   cd=a.post(rollno,post);

	   if(cd==true)
	   {
	   %>
	   <div class="container">
	   <h2>Alerts</h2>
	   <div class="alert alert-success">
	   <strong>Success!</strong> <%= rollno %>,You have posted into News feed
	   </div>
	   </div>
	   <a href=<% out.print(session.getAttribute("wholog")+".jsp"); %>><h3>Click here to return to main page</h3></a>
	   <%} else{ %>
	   <h1>Sorry,Not able to post</h1><a href="postnewsfeedui.jsp">Click here to retry</a>
	   <%} 
	   
	   break;
   }
   
   case "admin" :
   {    b = new Admin();
   rollno = (String)session.getAttribute("user");
   post = request.getParameter("post");
   cd=b.post("ADMIN",post);
 
   if(cd==true)
   {
   %>
   <div class="container">
   <h2>Alerts</h2>
   <div class="alert alert-success">
   <strong>Success!</strong> <%= rollno %>,You have posted into News feed
   </div>
   </div>
   <a href=<% out.print(session.getAttribute("wholog")+".jsp"); %>><h3>Click here to return to main page</h3></a>
   <%} else{ %>
   <h1>Sorry,Not able to post</h1><a href="postnewsfeedui.jsp">Click here to retry</a>
   <%} 
	   break;
   }
 
 
 
 
 
 }%>

</body>
</html>