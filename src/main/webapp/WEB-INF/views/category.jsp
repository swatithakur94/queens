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
		$scope.data = ${Cat};

	});
</script>


<body ng-app="xyz" ng-controller="abc" style="background-color: pink;">
	<c:import url="/head"/>
	<div class="container-fluid">
	<div class="col-md-4 col-md-offset-4">
	
	</div>
		
	</div>


	<div class="container-fluid">
		<div class="col-md-4 col-md-offset-4">
			<a href="${pageContext.request.contextPath}/addcategory" class="btn btn-primary btn-block">Add Category</a>
		</div>
	</div>
	
	<br><br>
	
	<div class="container-fluid">
	<div class="col-md-12">
	
	<table class="table table-hover">
			<tbody>
			<tr>			
				<th>Category Name</th>
				
			</tr>
				<tr ng-repeat="x in data ">
					<td>
				
					{{x.CategoryName}}
					</td>
					<td><a href="updatecategory/{{x.CategoryId}}" class="btn btn-warning btn-xs">UPDATE</a></td>
					<td><a href="deletecategory/{{x.CategoryId}}" class="btn btn-danger btn-xs">DELETE</a></td>		
					</tr>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>