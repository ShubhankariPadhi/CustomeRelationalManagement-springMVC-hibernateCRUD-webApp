<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div class="container">


<h3 class="bg-primary text-center">CRM - Customer Relationship Manager</h3>

<br/>

<form action="<c:url value="customerSearch" />">
Search customer: <input class="col-md-6"  type=text name="freeText"  value="${param.freeText}" placeholder="Enter text to search">
<button>Search</button>
</form>

<br/>



<table  class="table table-striped table-bordered text-center">
 <tr>
 <th>First Name </th>
 <th>Last Name </th>
 <th>Email</th>
 <th>Action</th>
 </tr>
 
<c:forEach items="${theCustomers}" var ="customer">

<c:url var="UpdateLink" value="showUpdateForm">
<c:param  name="customerId" value="${customer.id }" />
</c:url>

<c:url var="DeleteLink" value="deleteRecord">
<c:param  name="customerId" value="${customer.id }" />
</c:url>

<tr>
<td>${customer.first_name}</td>
<td>${customer.last_name}</td>
<td>${customer.email}</td>

<td>
<a href="${UpdateLink}"> Update</a> |
<a  onclick="if(!confirm('Are you sure that want to delete the customer record ?')) return false; " href="${DeleteLink}" >Delete</a>
</td>
</tr>
</c:forEach>
</table>



<p>
<button onclick="window.location.href='addCustomer'" return false;>Add Customer</button>
</p>

</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>