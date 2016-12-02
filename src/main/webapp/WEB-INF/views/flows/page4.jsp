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
'use strict';
		var myApp = angular.module('myApp',[]);
	
		myApp.factory('UserService', ['$http', '$q', function($http, $q)
		{
	 
    	return {
         
    		deleteAllFromCart: function(item){
                    return $http.post('http://localhost:9080/queens/flows/deleteAllFromCart/', item)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while sending data');
                                        return $q.reject(errResponse);
                                    }
                            );
            }
    };
 
}]);
	
	///////////////
	
	
	myApp.controller("abc",['$scope', 'UserService' ,function($scope , $UserService)
	{
		$UserService.deleteAllFromCart();
	}]); 
	
</script>
<body ng-app="myApp" ng-controller="abc" style="background-color:pink;">
<c:import url="/head"/>

 
 <br>
 <br>
 <br>
 <br>
 <div class="container">
<div class="container-fluid">
<div class="col-md-6">
<img src="resources/images/s.jpg" class="img-responsive"
alt="queens ">
</div>
<div class="col-md-6">
<h1 style="text-decoration: underline";>Thankyou For Shopping!!! </h1>
<br><br><br><br>
<a href="${pageContext.request.contextPath}/index" class="btn btn-danger pull-center">BACK TO HOME</a>
</div>
</div>
</body>
</html>