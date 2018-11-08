<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="helloworld.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wrong Details</title>
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
  font-family: inherit;
  font-size: 12px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

</style>
</head>
<body>

<%
           

          session.setAttribute("wholog",request.getParameter("selection"));

    	    User u = new User();
    	    boolean b = true;
    	    session.setAttribute("user",request.getParameter("rollno"));
    	  
    	    ResultSet result = u.login(request.getParameter("rollno"),request.getParameter("password"),(String)session.getAttribute("wholog"));

    	        if(result.next()){
    	            response.sendRedirect(session.getAttribute("wholog")+".jsp");
    	        }

    	        else{
    	             b = false;
    	        	}
%>

    	    <%if(b==false){ %>
    	    <div class="container">
          <h2>Alerts</h2>
          <div class="alert alert-danger">
          <strong>Danger!</strong> The details you entered are wrong
          </div>
          </div>
    	    <a href="hello.jsp"><h3>Re-enter your details</h3></a>
    	    <% } %>
</body>
</html>
