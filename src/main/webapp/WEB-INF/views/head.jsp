<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.glyphicon.glyphicon-wrench {font-size: 100px;}
.glyphicon.glyphicon-fire{  font-size: 100px;}
.glyphicon.glyphicon-ok{font-size: 100px;}


body {
/* Margin bottom by footer height */
margin-bottom: 600px;
}
html {
position: relative;
min-height: 100%;
}
.footer {
position: absolute;
bottom: 0;
width: 100%;
text-align: center;
color: #dddddd;
/* Set the fixed height of the footer here */
height: 50px;
background-color: #000000;
}

</style>
</style>

<myhead style="position:absolute;left:0;top:0;width: 100%;text-align: center;font-size: 50px;font-style:bold;font-family:forte;">Q U E E N S<com style="top:1650px;
    width:1%;text-align: center;font-size: 20px;font-style:italic;font-family:forte;"></com>
    <slogan style=" position:absolute;left:7%;top:75%;width: 100%;text-align: center;font-size: 15px;font-style:bold;font-family:monotype corsiva;">-`Stay Classy!</slogan></myhead>

<br><br><br><br>
<nav class="navbar navbar-inverse";>
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/index.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/index">Home</a></li>
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/contact.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/contact">Contact </a><li>
       <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/product.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/product">Product </a><li>
       
       <%
       	if( request.isUserInRole("ADMIN") )
       	{
		%>
		
       
       <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/category.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/category">Category </a><li>
       
       <%
       	}
		%>
      
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/AboutUs.jsp'}">class="active"</c:if>> <a href="AboutUs">About Us</a></li>
     <%
						if (request.isUserInRole("USER"))
						{
							%>
	<li><a href="${pageContext.request.contextPath}/initiateFlow" >View Cart</a></li>
							<%							
						}
						%>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
    	<c:choose>
    	
    		<c:when test="${ not empty pageContext.request.userPrincipal.name}">
    			<li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/SignUp.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
    			<li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/SignUp.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
    		</c:when>
    		
    		<c:otherwise>
    		
    			<li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/SignUp.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/SignUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			    <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/Login.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    		
    		</c:otherwise>
    	
    	</c:choose>
      
   </ul>
  </div>
</nav>



<div class="footer " >

 <centre>
 <span>&copy; QueenS.com </span>
 </centre>
 </div>