<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>
<title>QueenS</title>
</head>
<body style="background-color:pink;">
<c:import url="head.jsp"></c:import>
<div class="container">

  <form class="form-inline" >
    <div class="form-group">
      <label for="username">UserName:</label>
<br>
      <input type="username" class="form-control" id="username" placeholder="Enter username">
    </div>
<br><br>
    <div class="form-group">
      <label for="pwd">Password:</label>
<br>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
<br>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
<br>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</html>