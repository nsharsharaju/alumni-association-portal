<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Alumni search</title>
<style>body {
    ssfont: 12px/20px 'Lucida Grande', Verdana, sans-serif;
    height: 790px;
    width: 700px;
    background-image:    url(10.jpg);
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
  left:250px;
  top:100px;
  margin: 20px auto;
  padding: 18px 20px;
  width: 800px;
  background: #d9d9d9;
  opacity:0.9;
  background-clip: padding-box;
  border: 1px solid #172b4e;
  border-bottom-color: #142647;
  border-radius: 5px;
}
.login > h1 {
  margin-bottom: 20px;
  font-size: 30px;
 font-family: Ubuntu medium;
  font-style: italic;
  color: #e60000;
  text-align: center;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
}
.login > h3 {
  margin-bottom: 5px;
  font-size: 15px;
  font-weight: bold;
  color: black;
	  text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
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
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.2);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.2);
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
</style>
</head>
<body>
  <a href="http://www.lnmiit.ac.in/"> <img src="logo.png" title="lnmiit" height="100" /></a>
	<form class="login" action="searchresults.jsp" method="get" >
		<h1>Search for Alumni's</h1>
<p>	    <h3>Search_Criteria::</h3>
	<select name="selection" >
    <option  value="name">Name</option>
  <option  value="city">City</option>
  <option value="company">Company</option>
  <option value="research">Research</option>

	</select></p>
	    <input type="text" name="vsa" class="login-input" placeholder="Keyword" autofocus>
  	    <input type="submit" value="Submit" class="login-submit">


	</form>
</body>
</html>
