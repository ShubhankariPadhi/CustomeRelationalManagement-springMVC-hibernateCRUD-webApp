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


<h3 >New Customer</h3>



<f:form   modelAttribute="customer"   action="saveProcess">
 
<f:hidden path="id"/>

<div class="form-group row">
    <label for="First Name" class="col-md-3" >First Name </label>
    <f:input class="form-control col-md-4" path="first_name" />
  </div>

<div class="form-group row ">
    <label for="Last Name " class="col-md-3">Last Name </label>
    <f:input class="form-control col-md-4" path="last_name" />
    
  </div>

<div class="form-group row">
    <label class="col-md-3" for="email">Email </label>
    <f:input class="form-control col-md-4" path="email" />
  </div>
  
  <div class="row">
  
<input class="col-md-1 " type=submit value=Save> &nbsp;
<a class="offset-md-8 col-md-4" href="customerList">Back  to List</a>
  
  </div>

</f:form>



</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>






