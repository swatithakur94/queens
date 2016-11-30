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
<div class="container-fluid">
<div class="col-md-4 col-md-offset-4">
<h3 style="text-decoration: underline;"><b>SIGN UP</b></h3>
</div>
</div>

<br>

		
		   <div class="col-md-4 col-md-offset-4">
		   <c:if test="${not empty passwordmismatch}">
			<br>
			<label class="alert alert-danger">Password Mismatch</label>
			<br>
		</c:if>

		<c:if test="${not empty useralreadyexists}">
			<br>
			<label class="alert alert-danger">Username Already Exists</label>
			<br>
		</c:if>

		<c:if test="${not empty success}">
			<br>
			<label class="alert alert-success">User Created Successfully</label>
			<br>
		</c:if>
  <form:form action="insertuser" method="post" modelAttribute="User">
                  
                             <div style="margin-bottom: 25px" class="input-group">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <form:input  path="username" type="text" class="form-control"  placeholder="Enter your name"/>
                               <label class="text text-danger"><form:errors path="username" /></label>
                               </div>
                     <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> 
                                             <form:input id="signup-email" path="email"  type="Email" class="form-control" name="Email" placeholder="Enter your email"/>
                                   <label class="text text-danger"><form:errors path="email" /></label>
                                </div>
                    <div style="margin-bottom: 25px" class="input-group">
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
                                     <form:input id="Password" path="password" type="password" class="form-control" name="Password" placeholder="Enter your password"/>
                                <label class="text text-danger"><form:errors path="password" /></label>
                               </div>
                    <div style="margin-bottom: 25px" class="input-group">
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
                                     <form:input id="CPassword" path="CPassword" type="password" class="form-control" name="CPassword" placeholder="Re-enter your password"/>
                          
                                </div>
                   <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                       <form:textarea class="form-control" path="address" rows="3" id="Address" placeholder="Enter your Address" name ="Address"/>
                                 <label class="text text-danger"><form:errors path="address" /></label>
                                 </div>
                   <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span> 
                                      <form:input id="Phone" path="phone" type="number" class="form-control" name="Phone" placeholder="Enter your Phone Number"/>
                                 <label class="text text-danger"><form:errors path="phone" /></label>
                                  </div>
                   <div style="margin-top: 10px" class="form-group">
<!-- Button -->
                   <div class="col-sm-12 controls">
                                         <input type="submit"	class="btn btn-primary btn-block" value="SIGN UP" />
					                     
                                 </div>
                                 </div>
                     </form:form>
              </div>
              

</body>
</html>