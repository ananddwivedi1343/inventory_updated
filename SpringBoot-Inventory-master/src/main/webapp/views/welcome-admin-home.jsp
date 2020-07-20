
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>index</title>

<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">

</head>
<body background="<c:url value="/resources/static/images/Pic1.jpg"/>"/>

<main>

<div class="container-fluid">
	
	<div class="d1">
        <header>Inventory Management System</header>
    </div>

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




<div id="footer">
    Copyright &copy;Techno-ltd.com
    <div>Inventory Management System</div>
</div>
<div class="col-lg-2"></div>



</div>

</main>
</body>
</html>
