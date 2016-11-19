<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:import url="head-meta.jsp"></c:import>
</head>
<script type="text/javascript">
	var myApp = angular.module('xyz', []);

	myApp.controller('abc', function($scope) {
		$scope.data = ${Cat};

	});
</script>


<body ng-app="xyz" ng-controller="abc" style="background-color: pink;">
	<c:import url="head.jsp"></c:import>

	<div class="container-fluid">

		<div class="col-md-12">
			<a type="button"
				href="${pageContext.request.contextPath}/addcategory"
				class="btn btn-primary">Add Category</a>
		</div>
	</div>
	<br>
	<div class="container fluid">
		<table class="table">

			<tbody>
				<tr ng-repeat="x in data">
					<td><label>Category Name:&nbsp;{{ x.CategoryName }}</label>
					
					<div class="btn1">
								<a
									href="updatecategory/{{x.CategoryId}}"
									class="button3">UPDATE</a>
							</div>
	
							<div class="btn1">
								<a
									href="deletecategory/{{x.CategoryId}}"
									class="button3">DELETE</a>
							</div>
					
					
					
					</td>
				</tr>
			</tbody>

		</table>

	</div>
</body>
</html>