<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Order</title>

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
		<div class=" col-lg-6" style="box-shadow: 0px 10px 15px black;margin-top: 80px;background-color: white;">
			<center><h1 style="font-family: Californian FB;">Place New Order</h1>
					</center>
				
					<form:form id="productform" action="/saveOrder" method="post" modelAttribute="order1"> 

						<!-- need to associate this data with customer id -->
						<form:hidden path="order_id" />

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="pro_id" style="font-family: Californian FB;">Product Id</label>
								<form:input path="product" placeholder="Enter Product Id" cssClass="form-control" />
							</div>
						</div><br>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="product_name" style="font-family: Californian FB;">Product Name</label>
								<input name="order1.product.name" value="${order1.product.name }" placeholder="Enter Product Name" cssClass="form-control" />
							</div>
						</div><br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="type" style="font-family: Californian FB;">type</label>
								<input name="type" placeholder="Enter Product Type" cssClass="form-control" />
							</div>
						</div><br>

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="brand" style="font-family: Californian FB;">Brand</label>
								<input name="order1.product.brand" value="${order1.product.brand} " placeholder="Enter Product Brand" cssClass="form-control" />
							</div>
						</div>
						<br>
						
						<br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="quantity" style="font-family: Californian FB;">Quantity</label>
								<form:input path="quantity" placeholder="Enter Product Quantity" cssClass="form-control" />
							</div>
						</div>
						<br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="price" style="font-family: Californian FB;">Price</label>
								<input name="order1.product.price" value="${order1.product.price}" placeholder="Enter Product Price" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="date" style="font-family: Californian FB;">Date</label>
								<form:input path="date" type="date"  cssClass="form-control" />
							</div>
						</div>
<br>

							

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="customer_id" style="font-family: Californian FB;">Customer Id</label>
								<input type="text" name="cust_id" value=${customer.cust_id} readonly="readonly"  Class="form-control" />
							</div>
						</div>
						<br>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="customername" style="font-family: Californian FB;">Customer Name</label>
								<input type="text" name="cust_name" value=${customer.name} placeholder="Enter Your Name" Class="form-control" />
							</div>
						</div><br>
					
						
						
						
						<div class="form-group">
							<!-- Button -->
							<div class="col-xs-12 col-lg-12 ">
								<form:button Class="btn btn-success btn-block">Submit</form:button>
							</div>
						</div>
<br>

					</form:form>
				<br>
			
		</div>
	</div>
	
	<div class="col-lg-3"></div>
</body>
</html>