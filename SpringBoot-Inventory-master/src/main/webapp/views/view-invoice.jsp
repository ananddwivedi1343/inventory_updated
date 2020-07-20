<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice List</title>


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
 <a href="/view-customer" data-target="viewcust" class="nav-link">Customer Details</a>
  <a href="/view_order" data-target="vieworder" class="nav-link">Order Detatils</a>
  <a href="/view-invoice" data-target="viewinvoice" class="nav-link">View Invoice</a>
 
 
    
     <div class="topnav-right">
    	 
         <a href="logout">Log Out</a>
           
     </div>
    
</div>

<div align="center" class="container">
    <h1 style="font-family: Californian FB; color:red;">Invoice List</h1>
     
    <br/><br/>
    <table border="1" class="table table bordered  table-striped" style="box-shadow: 0px 10px 15px black;background-color: lightgray;">
        <thead>
            <tr>
            	<th>Invoice ID</th>
                <th>Order ID</th>
                <th>Product ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Brand</th>
               
                <th>Quantity</th>
                <th>Price</th>
                <th>Total Price</th>
               
                <th>Invoice Date</th>
                <th>Customer Id</th>
                <th>Customer Name</th>
             
                
            </tr>
        </thead>
        <tbody>
        <c:forEach var="invoice" items="${listInvoice}">
        
        	<c:url var="updateLink" value="/showInvoice">
								<c:param name="invoiceId" value="${invoice.invoiceId}" />
							</c:url>
         	
         	<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/deleteInvoice">
								<c:param name="invoiceId" value="${invoice.invoiceId}" />
							</c:url>
         				
            <tr>
            	<td>${invoice.invoiceId}</td>
            	<td>${invoice.order1.order_id}</td>
                <td>${invoice.order1.product.id}</td>
                <td>${invoice.order1.product.name}</td>
                <td>${invoice.order1.product.type}</td>
                <td>${invoice.order1.product.brand}</td>
            
                <td>${invoice.order1.quantity}</td>
            	<td>${invoice.order1.product.price}</td>
            	<td>${invoice.order1.price}</td>
            	
            	<td>${invoice.order1.date}</td>
                <td>${invoice.order1.customer.cust_id}</td>
                <td>${invoice.order1.customer.name}</td>
               <td>
               <a href="${updateLink}"><label class="label label-danger">Delete</label></a>
               </td>
               
            </tr>
            
             </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>