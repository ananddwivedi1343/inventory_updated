<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Manager</title>


<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="/resources/static/js/app.js"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/back1.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body background="<c:url value="/resources/static/images/pic3.jpg"/>"/>

<div class="topnav">

  <a href="/new" data-target="addproduct" class="nav-link">Add Product</a>
  <a href="/products" data-target="viewproduct" class="nav-link">View Products</a>
 <a href="/view-customer" data-target="viewcust" class="nav-link">Customer Details</a>
  <a href="/view_order" data-target="vieworder" class="nav-link">Order Detatils</a>
  <a href="/view-invoice" data-target="viewinvoice" class="nav-link">View Invoice</a>
 
    
     <div class="topnav-right">
    	 
         <a href="logout">Log Out</a>
           
     </div>
    
</div>

<div align="center" class="container">
    <h1 style="font-family: Californian FB; color:red;">Product List</h1>
     
    <br/><br/>
    <table border="1"  class="table table bordered  table-striped" style="box-shadow: 0px 10px 15px black;background-color: lightgray;">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Brand</th>
                <th>Made In</th>
                <th>Quantity</th>
                <th>Price</th>
             
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${listProducts}">
        
         <!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/edit">
								<c:param name="id" value="${product.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/delete">
								<c:param name="id" value="${product.id}" />
							</c:url>
        
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.type}</td>
                <td>${product.brand}</td>
                <td>${product.madein}</td>
                <td>${product.quantity}</td>
                <td>${product.price}</td>
                
                <td>
                   	<!-- display the update link --> 
									<a href="${updateLink}"><label class="label label-success">Update</label></a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"><label class="label label-danger">Delete</label></a>
                </td>
               
            </tr>
             </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>