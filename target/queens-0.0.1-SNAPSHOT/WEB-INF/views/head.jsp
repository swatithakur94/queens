<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.glyphicon.glyphicon-wrench {font-size: 100px;}
.glyphicon.glyphicon-fire{  font-size: 100px;}
.glyphicon.glyphicon-ok{font-size: 100px;}

html{
 position: relative;
 min-height: 100%;
 
 }
 body
 {
 margin-botton:80px;
 }
.footer
{
 position:absolute;
 bottom: 0;
 width:100%;
 text-align:centre;
 color:#dddddd;
 height:50px;
 background-color:#000000;


}
</style>

<h1 >Q U E E N S</h1>
Stay Classy!
<body style=background-color:"pink";>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/index.jsp'}">class="active"</c:if>><a href="index">Home</a></li>
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/contact.jsp'}">class="active"</c:if>><a href="contact">Contact </a><li>
       
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/AboutUs.jsp'}">class="active"</c:if>> <a href="AboutUs">About Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/SignUp.jsp'}">class="active"</c:if>><a href="SignUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li <c:if test="${pageContext.request.requestURI eq '/queens/WEB-INF/views/Login.jsp'}">class="active"</c:if>><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>


</body>
<div class="footer " style=" height:50px; background-color:#000000; margin-top:30px" >
 <br>
 <centre>
 <span>&copy; QueenS.com </span>
 </centre/>
 </div>