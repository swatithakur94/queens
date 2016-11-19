<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<c:import url="/head-meta" />
	
</head>
<style>

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
      padding:10px;
  }


</style>
<body style="background-color:pink"; >
<div id="bg">
<img src="resources/images/.jpg" alt="">
</div>



	<c:import url="/head" />
</div>
  
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators" margin="auto">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/101.jpg" alt="Tesla" width="800" height="570"  >
      </div>

      <div class="item">
        <img src="resources/images/103.jpg" alt="Chania" width="800" height="570">
      </div>
    
      <div class="item">
        <img src="resources/images/104.jpg" alt="Flower" width="800" height="570">
      </div>

      <div class="item">
        <img src="resources/images/105.jpg" alt="Flower" width="800" height="570">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br><br>

<div class="container-fluid">

 
  <div class="row">
  <center>
    <div class="col-sm-4">
    
    <div class="row">
    <div class="col-sm-12" >
    
    <img src="resources/images/8.jpg" class="img-circle" height="300" width="300">
      
    </div>
    </div>
    <div class="row">
    <div class="col-sm-12" >
      <h3> VALENTINO </h3>
    
      
    </div>
    </div>
    </div>
    
    <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
      <img src="resources/images/2.jpg" class="img-circle" width="300" height="300">
    </div>
    </div>
    <div class="row">
    <div class="col-sm-12" >
       <h3> PRADA </h3>
   
    </div>
    </div>
    
    </div>
    <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
       <img src="resources/images/3.jpg" class="img-circle" height="300" width="300">
    </div>
    </div>
    <div class="row">
    <div class="col-sm-12" >
        <h3>VERSACE</h3>
      <br><br><br><br><br>  
   
    </div>
    </div>
    </div>
    </center>
  </div>
  
</div>

 
</body>
</html>