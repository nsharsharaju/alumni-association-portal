<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="helloworld.*" %>    
<!DOCTYPE html>	
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Page</title>
   <style>body {
    ssfont: 12px/20px 'Lucida Grande', Verdana, sans-serif;
    height: 600px;
    width: 700px;
    background-image:    url(2.jpg);
    background-size: cover;                   
    background-repeat:   no-repeat;
    background-position: center center;  
    filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='.2.jpg',sizingMethod='scale');
   -ms-filter:"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='2.jpg',sizingMethod='scale')";
}

input, textarea, select, label {
  font-family: inherit;
  font-size: 12px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.login {
position:absolute;
  left:290px;
  top:130px;  padding: 18px 20px;
  width: 800px;
  background-clip: padding-box;
    background: #d9d9d9;
    opacity:0.73;
  border: 1px solid #172b4e;
  border-bottom-color: #142647;
  border-radius: 5px;
}

.login > h1 {
  margin-bottom: 20px;
  font-size: 35px;
  font-weight: bold;
  color: #e60000;
  text-align: center;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
}
.login > h3 {
  margin-bottom: 5px;
  font-size: 15px;
  font-weight: bold;
  color: black;
}
.login-input {
  display: block;
  width: 100%;
  height: 37px;
  margin-bottom: 20px;
    font-weight: bold;
  padding: 0 9px;
  color: white;
  text-shadow: 0 1px black;
  background: #2b3e5d;
  border: 1px solid #15243b;
  border-top-color: #0d1827;
  border-radius: 4px;
  background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
  background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
  background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
}

.login-input:focus {
  outline: 0;
  background-color: #32486d;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 0 4px 1px rgba(255, 255, 255, 0.6);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 0 4px 1px rgba(255, 255, 255, 0.6);
}

.login-submit {
  background-position:50% 50%;
  display: oval;
  width: 15%;
  height: 30px;
  margin-bottom: 15px;
  font-size: 14px;
  font-weight: bold;
  color: #294770;
  text-shadow: 0 1px rgba(255, 255, 255, 0.3);
  background: #adcbfa;
  background-clip: padding-box;
  border: 1px solid #284473;
  border-bottom-color: #223b66;
  border-radius: 4px;
  cursor: pointer;
  background-image: -webkit-linear-gradient(top, #d0e1fe, #96b8ed);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.5), inset 0 0 7px rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.5), inset 0 0 7px rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.15);
}

.login-submit:active {
  background: #a4c2f3;
  -webkit-box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.4), 0 1px rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.4), 0 1px rgba(255, 255, 255, 0.1);
}

.login-help {
  text-align: center;
}

.login-help > a {
  font-size:12px;
  color:darkred;
  text-decoration: none;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
}

.login-help > a:hover {
  text-decoration: underline;
}

bg{position:absolute;
		top:-10px;
		left:-10px;
		min-height: 200%;
		min-width: 100%;
		}
}

</style>
</head>

<body>

<%
Jdbcconnection c = new Jdbcconnection();

%>
  
  <a href="http://www.lnmiit.ac.in/"> <img src="logo.png" title="lnmiit" height="100" /></a>
<form class="login"  action="logincheck.jsp" method="POST" >
  
    <h1>Alumni Association portal</h1>
<h3>Login As:</h3>
	<p>Alumni_<input type="radio" name="selection" value="alumni" />
	Student_<input type="radio" name="selection" value="student" />
	Admin_<input type="radio" name="selection" value="admin" />
	</p>
    <input type="text" name="rollno" class="login-input" placeholder="Roll Number" autofocus>
    <input type="password" name="password" class="login-input" placeholder="Password">
    <center> <input type="submit" value="Login" class="login-submit"> </center>
    <p class="login-help"><a href="#"> Forgot password? </a>|<a href="student_signupui.jsp"> SignUp as Student </a>|<a href="alumni_signupui.jsp"> SignUp as Alumni </a></p>
  </form>
</body>
</html>
    