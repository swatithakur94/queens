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



 <form:form action= "AddProductToDB" method="post" modelAttribute="Product" enctype="multipart/form-data">
		<div class="container">

			<table>
				<tr>
					<td>Product Name :</td>
					<td><form:input path="ProductName" type="text"/></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:input path="ProductDescription" type="text" /></td>
				</tr>
               
				<tr>
					<td>Quantity :</td>
					<td><form:input path="ProductQty" type="text" /></td>
				</tr>
               <tr>
					<td>Category :</td>
					<td>
					<form:select path="ProductCategory">
					
						<c:choose>
						
							<c:when test="${not empty AllCategories}">
							
								<c:forEach var="cat" items="${AllCategories}">
									<form:option value="${cat}"/>
								</c:forEach>
							
							</c:when>
						
							<c:otherwise>
								<form:option value="None"/>
							</c:otherwise>
						
						</c:choose>
					
					</form:select>
					</td>
				</tr>
				<tr>
					<td>Price :</td>
					<td><form:input path="ProductPrice" type="text" /></td>
				</tr>
          <tr>
					<td><form:label path="ProductImage" for="ProductImage">Image:</form:label></td>
					<td><label class="form-control"><span
							id="file_display1">Choose Image</span><span
							style="position: relative;"><form:input path="productFile"
									onchange="changeFileDisplay1();" type="file" style="opacity:0;"
									class="form-control" id="imageFile1" /></span></label> <script
							type="text/javascript">
										function changeFileDisplay1() {
											document
													.getElementById("file_display1").innerHTML = $(
													'#imageFile1').val();
											;
										}
									</script></td>
				</tr>
           
				<tr>
					<td colspan="2"><input type="submit"
						class="btn btn-primary" value="Save" /></td>
					</tr>
					
			</table>
			
		</div>
		
</div>
</form:form>
</body>

</html>