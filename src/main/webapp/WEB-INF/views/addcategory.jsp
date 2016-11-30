<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<div class="container">

	<form:form method="post" action="AddCategoryToDB" modelAttribute="Category" enctype="multipart/form-data">
	
		
<div class="col-md-4 col-md-offset-4">
<h3 style="text-decoration: underline";><b>ADD CATEGORY</b></h3>
</div>
</div>
<br>

<div class="col-md-4 col-md-offset-4">
<form id="loginform" class="form-horizontal" role="form">
<div style="margin-bottom: 25px" class="input-group">
 <form:input path="id" type="hidden"/>
<form:input type="text" path="CategoryName" class="form-control"/>
                    
</div>

<div style="margin-top: 10px" class="form-group">
<!-- Button -->
<div class="col-sm-12 controls">
<button id="btn-login" href="#" class="btn btn-primary ">ADD</button>

</div>
</form>
</div>
  </form:form>
  </div>
</body>
</html>