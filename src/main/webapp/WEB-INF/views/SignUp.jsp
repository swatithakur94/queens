<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="container">
  
  <form class="form-inline">
    <form>
<div class="form-group">
    <label for="text">Name:</label><br>
    <input type="text" class="form-control" id="name">
  </div>
<br><br>
  <div class="form-group">
    <label for="email">Email address:</label><br>
    <input type="email" class="form-control" id="email">
  </div>
<br><br>
  <div class="form-group">
    <label for="password">Password:</label><br>
    <input type="password" class="form-control" id="password">
  </div>
  <div class="form-group">
    <label for="password">Confirm Password:</label><br>
    <input type="password" class="form-control" id="password_cnfrm">
  </div>
<br><br>
  <div class="form-group">
    <label for="comment">Address:</label><br>
  <textarea class="form-control" rows="3" id="address"></textarea>
  </div>
<br><br>
  <div class="form-group">
    <label for="number">Phone Number:</label>
<br>
    <input type="number" class="form-control" id="p_number">
  </div>
<br><br>
  <button type="submit" class="btn btn-primary">Sign Up</button>
</form>
  </form>
</div>

</body>

</html>