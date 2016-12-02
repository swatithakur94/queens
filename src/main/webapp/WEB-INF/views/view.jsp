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
<div class="container">
		<table class="table">
			<tr>

				<td colspan="2"><img
					src="${pageContext.request.contextPath}/${ProductImg}" width="40%"
					class="img img-responsive img-thumbnail"></img></td>
			</tr>

			<tr>
				<td>Product Name :</td>
				<td>${ProductName}</td>
			</tr>
	
			<tr>
				<td>Description:</td>
				<td>${ProductDescription}</td>
			</tr>
			<tr>
				<td>Category :</td>
				<td>${ProductCategory}</td>
			</tr>

			<tr>
				<td>Price :</td>
				<td>${ProductPrice}</td>
			</tr>

	
<%
     if (!request.isUserInRole("ADMIN")) {
    	 
        
        %>
        
        	<form action="${pageContext.request.contextPath}/addToCart" method="post">

				<input type="hidden" value="${ProductId}" name="pid" />
				<tr>
					<td>Qty</td>
					<td><input type="number" value="1" min="1" max="10"
						name="pqty" class="form form-input" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Add To Cart"
						class="btn btn-danger" /></td>
				</tr>
			</form>
<%
}
%>

		</table>
		


</div>
<br><br>
<br><br>
</body>
</html>