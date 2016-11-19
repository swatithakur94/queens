<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>
<title>Queens</title>
</head>
<body style="background-color:pink;">
<c:import url="head.jsp"></c:import>

<h3  position="left:300px";> ADD CATEGORY</h3>

<div class="container">

	<form:form method="post" action="AddCategoryToDB" modelAttribute="Category">
	
		<div class="col-xs-2">
			<form:input path="CategoryName" type="text" placeholder="Enter Category Name"/>
	    </div>

		<div class="col-xs-2">    
	     	<input type="submit" class="btn btn-primary" value="ADD"/>
	  	</div>
  </form:form>
  </div>
</body>
</html>