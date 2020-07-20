<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="/resources/static/css/login.css">

<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">

</head>
<body background="<c:url value="/resources/static/images/pic1.jpg"/>"/>

<div class="form">

 

<div id="login">
  
  <h1>Log in</h1>
 <form:form id="loginform" action="loginCustomer" method="post" modelAttribute="customer">
    <input type="text" placeholder="Email" name="email"/>
    <input type="password" placeholder="Password" name="password" />
    <input type="submit" value="Log in" />
 <br><br>
 <center><p>New User? <a style="color: blue;" href="showFormcust">Register</a></p></center>
 
 </form:form>
</div>
  
</div>
<div style="color: red">${error}</div>
</body>
</html>