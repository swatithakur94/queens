<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta"/>




<title>QueenS</title>
</head>

<script type="text/javascript">

	var myApp = angular.module("myApp",[]);
	
	myApp.factory("UserService",["$http","$q",function($http,$q)
	{
		var target_url = 'http://localhost:9080/queens/';
		
		return{
			fetchAllItems : function()
			{
				return $http.post( target_url + 'REST/fetchAllItems' ).then(
					function( response ){
						return response.data;
					},
					function( errResponse ){
						return $q.reject(errResponse);
					}
				);
			}
		};
	}]);
	
	myApp.controller("abc",["$scope","UserService",function($scope,$UserService)
	{
		$UserService.fetchAllItems().then(function(response)
		{
			//console.log(response);
			$scope.data = response;
		},function(errResponse)
		{
			console.log('Error fetching Items');
		});
	}]);

</script>


<body style="background-color:pink;" ng-app="myApp" ng-controller="abc">
<c:import url="/head"/>
	<br>
	<br>
	<br>
	<br>
		<a href="${pageContext.request.contextPath}/product"
			class="btn btn-danger btn pull-left"><span
			class="glyphicon glyphicon-chevron-left"></span>BACK TO PRODUCT</a>


		<a href="${flowExecutionUrl}&_eventId=goToCheckout"
			class="btn btn-danger  btn pull-right">CHECK OUT<span
			class="glyphicon glyphicon-chevron-right"></span></a>


	<div class="container-fluid">
	<div class="col-md-12">
	
	<table class="table table-hover">
			<tbody>
			<tr>			
				<th>Product Name</th>
				<th>Product Qty</th>
				<th>Product Price</th>
				<th>Product Image</th>
			</tr>
				<tr ng-repeat="x in data ">
					<td>
				
					{{x.ProductName}}
					</td>
					<td>{{x.ProductQty}}</td>
					<td>{{x.ProductPrice}}</td>
					<td><img
					
					ng-src="${pageContext.request.contextPath}/{{ x.ProductImage }}" height=" 50px" width="100px"></td>
                    
                    
					<td><a href="${pageContext.request.contextPath}/view/{{x.ProductId}}" class="btn btn-warning btn-xs">VIEW</a></td>
					
					</tr>
			</tbody>
		</table>
		</div>
	
</body>
</html>