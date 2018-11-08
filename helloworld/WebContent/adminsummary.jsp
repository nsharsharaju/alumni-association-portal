<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="helloworld.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>

table , th ,td {border: 1px solid black; padding: 15px}
tr:nth-child(odd) {background-color:grey}
tr:nth-child(even) {background-color: lightgrey}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
Admin a = new Admin();
Summary s = new Summary();

s = a.retrieveSummary();

ArrayList<Citysummary> list1 = s.getList1();

ArrayList<Researchsummary> list2 = s.getList2();

%>

<table style="margin-top:0px; margin-left:25%";>
<thead >
<tr style="background-color: lightgrey"><th>City</th><th>No.of Alumni</th></tr>
</thead>
<tbody>
<%for(Citysummary e:list1){%><h1 style="color:green"><tr><td><%=e.getCity()%></td><td><%=e.getcountcity()%></td></tr></h1><%} %>
</tbody>
</table>      

<table style="margin-top:0px; margin-left:25%";>
<thead >
<tr style="background-color: lightgrey"><th>Research</th><th>No.of Alumni</th></tr>
</thead>
<tbody>
<%for(Researchsummary e:list2){%><h1 style="color:green"><tr><td><%=e.getresearch()%></td><td><%=e.getresearchcount()%></td></tr></h1><%} %>
</tbody>
</table> 



 
 




</body>
</html>