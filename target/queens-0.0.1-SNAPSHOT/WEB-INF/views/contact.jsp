<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>

 
<title>QueenS</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  
</head>
<body style="background-color:pink;">
<c:import url="head.jsp"></c:import>
<div class="container">
  
  <form class="form-inline">
    <div class="form-group">
      <label for="email">Name:</label>
<br>
      <input type="name" class="form-control" id="name" placeholder="Enter Name">
    </div>
<br>
<br>

    <div class="form-group">
      <label for="pwd">Email Address:</label>
<br>

      <input type="email" class="form-control" id="email"  placeholder="Enter Email" >
    </div>
<br>

<br>
<div class="form-group">
      <label for="comment">Comment:</label>
<br>
      <textarea class="form-control" rows="5" id="comment"></textarea>
    </div>
    <br>
<br>
<button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
<div class="footer " style=" height:50px; background-color:#000000; margin-top:30px" >
 <br>
 <center>
 <span>&copy; QueenS.com </span>
 </center>
 </div>
</html>