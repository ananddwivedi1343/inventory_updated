<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="/resources/static/js/app.js"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body background="<c:url value="/resources/static/images/loginPic.jpg"/>"/>

<div class="col-lg-3">
	
	</div>

<div class="container" >
		<div class="col-lg-6" style="box-shadow: 0px 10px 15px black;margin-top: 80px;background-color: white;">
			<center><h1 style="font-family: Californian FB;">Register</h1>
			<p style="font-family: Californian FB;">Create your account.It's free and only takes a minute</p>
		</center><br>
				
					<form:form action="/saveCustomer" cssClass="form-horizontal"
						method="post" modelAttribute="customer">

						<!-- need to associate this data with customer id -->
						<form:hidden path="cust_id" />

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="name" style="font-family: Californian FB;">Name</label>
								<form:input path="name" placeholder="Enter Your Name" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="password" style="font-family: Californian FB;">Password</label>
								<form:password path="password" placeholder="Enter Your Password" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="email" style="font-family: Californian FB;">Email</label>
								<form:input path="email" placeholder="Enter Your Email" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="phone" style="font-family: Californian FB;">Phone</label>
								<form:input path="phone" placeholder="Enter Your Phone Number" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="address" style="font-family: Californian FB;">Address</label>
								<form:input path="address" placeholder="Enter Your Address" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-xs-12 col-lg-12 ">
								<form:button Class="btn btn-success btn-block">Submit</form:button>
							</div>
						</div>

<center><p>Already have an account? <a style="color: blue;" href="login">login</a></p></center>	

					</form:form>
				
			<br>
		</div>
	</div>
	
	<div class="col-lg-3"></div>
</body>
</html>