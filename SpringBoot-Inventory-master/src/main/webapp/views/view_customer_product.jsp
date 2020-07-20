<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>


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

   <a  href="showProfileForm">Profile</a>
  <a href="/view_customer_product">Order</a>
  
  <a href="/showInvoiceForm">Invoice Details</a>s
  
     <div class="topnav-right">
    	 
          <a href="logout">Log Out</a>
           
     </div>
</div>


<div align="center" class="container">
    <h1 style="font-family: Californian FB; color:red;">Product List</h1>
     
    <br/><br/>
    <table border="1" class="table table bordered  table-striped" style="box-shadow: 0px 10px 15px black;background-color: lightgray;">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Brand</th>
                <th>Made In</th>
                
                <th>Price</th>
             
                
            </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${listProduct}">
        
        	<c:url var="updateLink" value="/showorder">
								<c:param name="id" value="${product.id}" />
							</c:url>
         
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.type}</td>
                <td>${product.brand}</td>
                <td>${product.madein}</td>
            	<td>${product.price}</td>
                
               <td>
               <a href="${updateLink}"><label class="label label-danger">Order Now</label></a>
               </td>
               
            </tr>
            
             </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>