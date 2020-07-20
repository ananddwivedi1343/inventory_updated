<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>


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

<div align="center" class="container">
    <h1 style="font-family: Californian FB; color:red;">Order List</h1>
     
    <br/><br/>
    <table border="1" class="table table bordered  table-striped" style="box-shadow: 0px 10px 15px black;background-color: lightgray;">
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Product ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Brand</th>
               
                <th>Quantity</th>
                <th>Price</th>
                <th>Total Price</th>
                <th>Date</th>
                <th>Customer Id</th>
                <th>Customer Name</th>
             
                
            </tr>
        </thead>
        <tbody>
        <c:forEach var="order1" items="${listOrder}">
        
        	<c:url var="updateLink" value="/showInvoice">
								<c:param name="order_id" value="${order1.order_id}" />
							</c:url>
							
							<!-- construct an "deleteOrder" link with customer id -->
							<c:url var="deleteLink" value="/deleteOrder">
								<c:param name="order_id" value="${order1.order_id}" />
							</c:url>
         
            <tr>
            	<td>${order1.order_id}</td>
                <td>${order1.product.id}</td>
                <td>${order1.product.name}</td>
                <td>${order1.product.type}</td>
                <td>${order1.product.brand}</td>
            
                <td>${order1.quantity}</td>
            	<td>${order1.product.price}</td>
            	<td>${order1.price}</td>
            	<td>${order1.date}</td>
                <td>${order1.customer.cust_id}</td>
                <td>${order1.customer.name}</td>
               <td>
               <a href="${updateLink}"><label class="label label-danger">Generate Invoice</label></a>
               <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"><label class="label label-danger">Delete</label></a>
        
               </td>
               
            </tr>
            
             </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>