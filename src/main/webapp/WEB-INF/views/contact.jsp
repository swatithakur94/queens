<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta"/>
<title>QueenS</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  
</head>
<body style="background-color:pink;">
<c:import url="/head"/>
<div class="container-fluid">
<div class="col-md-4 col-md-offset-4">
<h3 style="text-decoration: underline";><b>CONTACT US</b></h3>
</div>
</div>

<div class="col-md-4 col-md-offset-4">
<form id="loginform" class="form-horizontal" role="form">
<div style="margin-bottom: 25px" class="input-group">
<span class="input-group-addon"><i
class="glyphicon glyphicon-user"></i></span> <input id="contact name" type="text"
class="form-control" name="name" value=""
placeholder="Enter your Name">
</div>
<div style="margin-bottom: 25px" class="input-group">
<span class="input-group-addon"><i
class="glyphicon glyphicon-envelope"></i></span> <input id="signup-email"
type="email" class="form-control" name="email"
placeholder="Enter your Email">
</div>

<div style="margin-bottom: 25px" class="input-group">
<span class="input-group-addon"><i
class="glyphicon glyphicon-comment"></i></span>
<textarea class="form-control" rows="3" id="comment"
placeholder="Enter your Comment" name ="comment"></textarea>
</div>
<div style="margin-bottom: 25px" class="input-group">
<span class="input-group-addon"><i
class="glyphicon glyphicon-earphone"></i></span> <input id="signup-ph_number"
type="number" class="form-control" name="ph_number"
placeholder="Enter your Phone Number">
</div>
<div style="margin-top: 10px" class="form-group">
<!-- Button -->
<div class="col-sm-12 controls">
<a id="btn-signup" href="#" class="btn btn-primary btn-block">Sign Up</a>
</div>
</div>
</form>
</div>

</html>