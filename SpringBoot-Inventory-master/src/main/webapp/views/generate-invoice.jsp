<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Invoice</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="/resources/static/js/app.js"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body background="<c:url value="/resources/static/images/pic3.jpg"/>"/>

<div class="topnav">

  <a href="/new" data-target="addproduct" class="nav-link">Add Product</a>
  <a href="/products" data-target="viewproduct" class="nav-link">View Products</a>
 <a href="/view-customer" data-target="viecust" class="nav-link">Customer Details</a>
  <a href="/view_order" data-target="viecust" class="nav-link">Order Detatils</a>
  <a href="/view-invoice" data-target="viecust" class="nav-link">View Invoice</a>
 
 
    
     <div class="topnav-right">
    	 
         <a href="logout">Log Out</a>
           
     </div>
    
</div>

<div class="col-lg-3">
	
	</div>

<div class="container" >
		<div class=" col-lg-6" style="box-shadow: 0px 10px 15px black;margin-top: 80px;background-color: gray;">
			
<div style="background:lightgray;">	
<h2 style="font-family: Californian FB;"><u>Company Name</u></h2>	<br>
<h4 style="font-family: Californian FB;">TECHNO Ltd</h4>	
<p style="font-family: Californian FB;">Phone No: 9865378412</p>	
<p style="font-family: Californian FB;">Email: Techno-ltd@gmail.com</p>	
</div>				
						<form:form id="productform" action="saveInvoice" method="post" modelAttribute="order1"> 
					
							<div class="form-group">
							
							<div class="col-xs-12 col-md-12 col-lg-12">
							
								<input type="hidden" name="order_id" value=${order1.order_id} readonly="readonly" Class="form-control" />
							</div>
						</div>

						<!-- need to associate this data with  id -->
						<div class="form-group">
							
							<div class="col-xs-12 col-md-12 col-lg-12">
							<!-- 	<label for="name" style="font-family: Californian FB;">Product Id</label>-->
								<input type="hidden" name="id" value=${order1.product.id} readonly="readonly" Class="form-control" />
							</div>
						</div>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="name" style="font-family: Californian FB;">Product Name</label>
								<input type="text" name="name" value=${order1.product.name} readonly="readonly" placeholder="Enter Product Name" Class="form-control" />
							</div>
						</div><br>
						  <div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<!-- <label for="type" style="font-family: Californian FB;">Type</label>-->
								<input type="hidden" name="type" value=${product.type} readonly="readonly" placeholder="Enter Product Type" Class="form-control" />
							</div>
						</div>

						 <div class="form-group">
							
							<div class="col-xs-12 col-lg-12" style="font-family: Californian FB;">
							<!-- <label for="brand" style="font-family: Californian FB;">Brand</label>-->
								<input type="hidden" name="brand" value=${product.brand} readonly="readonly" placeholder="Enter Product Brand" Class="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<!-- <label for="madien" style="font-family: Californian FB;">Made In</label>-->
								<input type="hidden" name="madein" value=${product.madein} readonly="readonly" placeholder="Enter Madein" Class="form-control" />
							</div>
						</div>
						 
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							 <label for="quantity" style="font-family: Californian FB;">Quantity</label>
								<input type="text" name="quantity" value=${order1.quantity}  placeholder="Enter Product Quantity" Class="form-control" />
							</div>
						</div>
						
						
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="price" style="font-family: Californian FB;">Price</label>
								<input type="text" name="price" value=${order1.product.price}  placeholder="Enter Product Price" Class="form-control" />
							</div><br>
						</div>
						<br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="price" style="font-family: Californian FB;">Total Price</label>
								<input type="text" name="price" value=${order1.price} placeholder="Enter Product Price" Class="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							 <label for="date1" style="font-family: Californian FB;">Order Date</label>
								<input type="date" name="date1" value=${order1.date} placeholder="Enter Order Date" Class="form-control" />
							</div><br><br>
						</div>
<br><br>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12" >
							<!-- <label for="customer_id" style="font-family: Californian FB;">Customer Id</label>-->
								<input type="hidden" name="cust_id"   Class="form-control" />
							</div>
						</div> 
						
						
						 <div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<!-- <label for="customername" style="font-family: Californian FB;">Customer Name</label>-->
								<input type="hidden" name="name" value="${customer.name}" placeholder="Enter Your Name" Class="form-control" />
							</div>
						</div> 
				
						<div class="form-group"><br>
							<!-- Button -->
							<div class="col-xs-12 col-lg-12 "><br>
								<form:button Class="btn btn-success btn-block">Generate Bill</form:button>
							</div><br><br>
						</div><br>
<br>


					</form:form>
				
			
		<br></div><br>
	</div>
	
	<div class="col-lg-3"></div>
</body>
</html>