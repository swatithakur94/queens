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



<body style="background-color:pink;">
<c:import url="/head"/>

	<br>
	<br>
	<br>
	<br>

	<a href="${flowExecutionUrl}&_eventId=BackToCart"
		class="btn btn-danger btn pull-left"><span
		class="glyphicon glyphicon-chevron-left"></span>BACK TO CART</a>

	<a href="${flowExecutionUrl}&_eventId=ViewCompleteOrder"
		class="btn btn-danger btn pull-right">CONFIRM DETAILS<span
		class="glyphicon glyphicon-chevron-right"></span></a>
		
		

</body>
</html>