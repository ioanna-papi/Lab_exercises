<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	
	<link rel="icon" type="image/x-icon" href="favicon.ico">	
	<meta name="description" content="Lesson 3 example">
	<meta name="author" content="sofos@aueb.gr">
	
	<title>About us</title>
	
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css">
	
	<!-- My custom theme -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/theme_8180099.css">
			
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">8180099</a>
          </div>
          <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li><a href="index_ex1_a_8180099.jsp">Home</a></li>            
              <li><a href="register_ex1_a_8180099.jsp">Register</a></li>
              <li class="active"><a href="about_ex1_a_8180099.jsp">About</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </nav>
      <div class="container theme-showcase" role="main">

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <h1> Ktellme </h1>
        </div>
      <div class="page-header">
        <h1>Group Members</h1>
      </div>
      <div class="media">
        <div class="media-left media-middle">
          <a href="#">
            <img class="media-object" src="images/profile.jpg"  height="100" width="100">
          </a>
         </div>
       <div class="media-body">
          <h3 class="media-heading"> Aikaterini Divini <small>8180022</small></h3>
          <p><span class="glyphicon glyphicon-envelope"></span> t8180022@aueb.gr</p> 
         </div>
      </div>
      <div class="media">
        <div class="media-left media-middle">
          <a href="#">
            <img class="media-object" src="images/profile.jpg"  height="100" width="100">
          </a>
        </div>
        <div class="media-body">
          <h3 class="media-heading"> Ioanna Maria Papidaki <small>8180099</small></h3>
          <p><span class="glyphicon glyphicon-envelope"></span> jannapapd@gmail.com</p>
        </div>
      </div>
      <div class="media">
        <div class="media-left media-middle">
          <a href="#">
            <img class="media-object" src="images/profile.jpg"  height="100" width="100">
          </a>
         </div>
         <div class="media-body">
          <h3 class="media-heading"> Alexia Tsakiri <small>8180136</small></h3>
          <p><span class="glyphicon glyphicon-envelope"></span> alx.tsak@gmail.com</p>
        </div>
       </div>
      <div class="media">
        <div class="media-left media-middle">
          <a href="#">
            <img class="media-object" src="images/profile.jpg"  height="100" width="100">
          </a>
        </div>
        <div class="media-body">
          <h3 class="media-heading"> Natalia Tsamtsouri <small>8180138</small></h3>
          <p><span class="glyphicon glyphicon-envelope"></span> nataliatsam11@gmail.com</p>
        </div>
      </div>
    </div>


      <!-- footer -->
		<footer class="navbar-inverse">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<p class="text-center">&copy; Copyright 2020 by ismgroup16</p>
					</div>
				</div>
			</div>
		</footer>
        <!-- End footer -->
        <!-- Place all JavaScript files before the closing body tag -->
	
	<!-- jQuery library (necessary for Bootstrap JavaScript) -->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</body>
</html>
