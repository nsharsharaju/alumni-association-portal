<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="helloworld.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<%!
boolean check(String a,String b)
{
	if(a.equals(b)==true)
	{
		return true;
	}

	else{
		return false;
	}
}
%>

<%
if(check(request.getParameter("password1"),request.getParameter("password2"))==false)
		{%>
		         <div class="container">
             <h2>Alerts</h2>
             <div class="alert alert-danger">
             <strong>Danger!</strong> The Passwords you entered don't match each other
              </div>
              </div>
    	        <a href="student_signupui.jsp"><h3>Re-enter your details</h3></a>
    <%}


else{
	Student a = new Student(request.getParameter("name"),request.getParameter("rollno"),request.getParameter("password1"),request.getParameter("emailid"));
	a.signup(a);
%>
            <div class="container">
            <h2>Alerts</h2>
            <div class="alert alert-success">
             <strong>Success!</strong> You have signed up
             </div>
    	      <a href="hello.jsp"><h3>Click Here to login</h3></a>

<%} %>

</body>
</html>
