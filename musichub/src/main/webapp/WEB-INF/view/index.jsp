<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>

 	<script src="<c:url value="/resources/js/jquery.js" />"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 50 //changes the speed
    })
    </script>
    
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index">Music Hub</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="LoginPage">Login</a></li>
     <li> <a href="Home">Home</a></li>
      <li><a href="About">About Us</a></li>
      <li><a href="ContactUs">Contact Us</a></li> 
      
    </ul>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
 

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="/resources/Images/IMG_1003.JPG" />" alt="image1">
      <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Delhi.</p>
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/Images/IMG_1004.JPG" />" alt="image2">
       <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers of Noida.</p>
      </div>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/Images/IMG_1005.JPG" />" alt="image3">
       <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers of Gurgaon.</p>
      </div>
    </div>

   
  </div>


</div>
<br /><br />

Welcome to my First Bootstrap web site.

 <div class="row">
  <div class="col-md-4">
    <a href="<c:url value="/resources/Images/IMG_1003.JPG" />" class="thumbnail">
       
      <img src="<c:url value="/resources/Images/IMG_1003.JPG" />" alt="Image1" style="width:150px;height:150px">
      <center><p>Flowervase</p></center>
    </a>
  </div>
  <div class="col-md-4">
    <a href="<c:url value="/resources/Images/IMG_1004.JPG" />" class="thumbnail">
      
      <img src="<c:url value="/resources/Images/IMG_1004.JPG" />" alt="Image2" style="width:150px;height:150px">
      <center><p>Flowervase1".</p></center>
    </a>
  </div>
  <div class="col-md-4">
    <a href="productdesc" class="thumbnail">
       
      <img src="<c:url value="/resources/Images/IMG_1004.JPG" />" alt="Image3" style="width:150px;height:150px">
      <center><p>Accessories</p></center>
    </a>
  </div>
</div>
</body>
</html>
