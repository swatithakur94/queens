<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>QueenS</title>
<c:import url="/head-meta"/>
</head>
<script type="text/javascript">
	var myApp = angular.module('xyz', []);

	myApp.controller('abc', function($scope) {
		$scope.data = ${pro};

	});
</script>


<body ng-app="xyz" ng-controller="abc" style="background-color: pink;">
	<c:import url="/head"/>

	<div class="container-fluid">
	<div class="col-md-4 col-md-offset-4">
	
	</div>
		
	</div>

	<%
       	if( request.isUserInRole("ADMIN") )
       	{
		%>

	<div class="container-fluid">
		<div class="col-md-4 col-md-offset-4">
			<a href="addproduct" class="btn btn-primary btn-block">Add Product</a>
		</div>
	</div>
	
	<%
	}
	%>
	
	<br><br>
	
	<div class="container-fluid">
	<div class="col-md-12">
	
	<table class="table table-hover">
			<tbody>
			<tr>			
				<th>Product Name</th>
				<th>Product Category</th>
				<th>Product Description</th>
				<th>Product Qty</th>
				<th>Product Price</th>
				<th>Product Image</th>
			</tr>
				<tr ng-repeat="x in data ">
					<td>
				
					{{x.ProductName}}
					</td>
					<td>{{x.ProductCategory}}</td>
					<td>{{x.ProductDescription}}</td>
					<td>{{x.ProductQty}}</td>
					<td>{{x.ProductPrice}}</td>
					<td><img
						ng-src="${pageContext.request.contextPath}/{{ x.flag }}" height=" 50px" width="100px"></td>

					<%
			       	if( request.isUserInRole("ADMIN") )
			       	{
					%>
					<td><a href="updateproduct/{{x.ProductId}}" class="btn btn-warning btn-xs">UPDATE</a></td>
					<td><a href="deleteproduct/{{x.ProductId}}" class="btn btn-danger btn-xs">DELETE</a></td>						
					<%
			       	}
					%>
					</tr>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>