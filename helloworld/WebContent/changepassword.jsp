<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="helloworld.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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
	String opass,npass1,npass2,rollno;
	User u;
	opass = request.getParameter("opass");
	npass1 = request.getParameter("npass1");
	npass2 = request.getParameter("npass2");
	rollno = (String)session.getAttribute("user");
	boolean cd1 = check(npass1,npass2);
	boolean cd2 = true;
	u = new User();
	if(cd1==true)
	{
	 cd2 = u.changepassword(rollno,opass,npass1,(String)session.getAttribute("wholog")); 
	}
	else{%>
	<div class="container">
            <h2>Alerts</h2>
            <div class="alert alert-danger">
             <strong>Danger!</strong> New passwords you entered do not match,Can't make change
             </div>
             </div><a href="changepasswordui.jsp"><h3>Click here to go to change password page</h3></a><%} %>

	
	<%if(cd2==false){ %>
	<div class="container">
            <h2>Alerts</h2>
            <div class="alert alert-danger">
             <strong>Danger!</strong> The current password you entered is wrong,Can't make make changes
             </div>
             </div><a href="changepasswordui.jsp"><h3>Click here to go to change password page</h3></a>
	<%} else if(cd1==true){ %>
	<div class="container">
            <h2>Alerts</h2>
            <div class="alert alert-success">
             <strong>Success!</strong> Changed your password
             </div>
             </div><a href=<% out.print(session.getAttribute("wholog")+".jsp"); %>><h3>Click here to enter the main page</h3></a><%}  
%>

</body>
</html>