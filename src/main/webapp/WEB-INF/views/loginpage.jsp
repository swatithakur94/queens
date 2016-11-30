<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta"/>
<title>QueenS</title>
<style type="text/css">

</style>
</head>
<body style="background-color:pink;">

<div align="center">

	

<c:import url="/head"/>
          <div class="container-fluid">
                 <div class="col-md-4 col-md-offset-4">
                      <h3 style="text-decoration: underline";><b>LOGIN</b></h3>
                        </div>
                        </div>
                        	<form action="login" method="post">


			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Invalid Username and password.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have been logged out successfully.</p>
				</div>
			</c:if>
                        
                            <br>
           <div class="col-md-4 col-md-offset-4">
                  <form id="loginform" class="form-horizontal" role="form">
                      <div style="margin-bottom: 25px" class="input-group">
                           <span class="input-group-addon"><iclass="glyphicon glyphicon-user"></i></span>
                            <input type="text" class="form-control" name="Username" value="" placeholder="Enter your UserName">
                           </div>

             <div style="margin-bottom: 25px" class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" class="form-control" name="Password" placeholder="Enter your password">
</div>

       <div style="margin-bottom: 25px" class="input-group">
					<center>
					<a href="${pageContext.request.contextPath}/enteremailid" >Forgot your password</a>
					</center>
				</div>
				

<div style="margin-top: 10px" class="form-group">
<!-- Button -->
<div class="col-sm-12 controls">
<button id="btn-login" href="#" class="btn btn-primary btn-block">LogIn</button>
</div>
</div>
</form>
</div>
</form>
</div>
</html>