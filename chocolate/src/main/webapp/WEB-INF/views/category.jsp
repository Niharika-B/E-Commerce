<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<title>category page</title>
<style type="text/css">
body {
	background-image: url("resources/reg.jpg/ ");
	background-size:300%;
	background-repeat:no-repeat;
}

</style>

</head>
<body>

<center><h1>ChocolateStore</h1></center>
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
    <a href="index" class="pull-left"></a>
     <div class="navbar-brand">ChocolateStore</div>
    </div>
    
    
    <ul class="nav navbar-nav">
      <li ><a href="index.jsp">Home</a></li>
      <li class="active"><a href="Category">Manage category</a></li>      
      <li><a href="Product">Manage product</a></li> 
      <li><a href="Supplier">Manage supplier</a></li> 
      <li><a href="perform_logout"><span
						class="glyphicon glyphicon-log-out"></span>logout</a></li>
      
    </ul>

  </div>
</nav>

<center>
<form:form action="saveCategory" method="post" commandName="category" style="width:30%;">

    <form:input type="hidden" path="catid" class="form-control" placeholder="category id"/><br>
    <br><label><b>Name</b></label>
    <form:input type="text" path="catname" class="form-control" placeholder="category name"/><br>
     <br><label><b>description</b></label>
    <form:input type="text" path="catdesc" class="form-control" placeholder="category description"/><br>
      <td><input type="submit" value="submit">
</form:form>
<br><br>

<table style="width:70%;text-color:white;" border="1">
            <tr>
                <th>Category id</th>
                <th>Category name</th>
                <th>Category description</th>
                <th>delete</th>
                <th>Edit</th>
            </tr>

            <c:forEach items="${catlist}" var="category">
                <tr>
                    <td>${category.catid}</td>
                    <td>${category.catname}</td>
                    <td>${category.catdesc}</td>
                    <td><a href="catdelete?cid=${category.catid}">delete</a></td>
                    <td><a href="catedit?cid=${category.catid}">Edit</a></td> 
				</tr>
			</c:forEach>
</table>
</center>
<br> 
<jsp:include page="commonfooter.jsp"></jsp:include>	
</body>
