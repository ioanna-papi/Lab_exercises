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
	
	<title>Registration</title>
	
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
            <li class="active"><a href="register_ex1_a_8180099.jsp">Register</a></li>
	    <li><a href="about_ex1_a_8180099.jsp">About</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

      <div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1> 1η Ατομική Άσκηση- Part A </h1>
			</div>
			<h3>Registration Form</h3>
			<div class="alert alert-warning" role="alert">
  			<h5 align ="center" >Please fill in the following form to create an account.</h5>
			</div>
       </div>

	
	<div class="container">

		<div class="row">
			<div class="col-xs-12 col-md-10 col-lg-8">

				<form action="registerController_ex1_a_8180099.jsp" method="POST" class="form-horizontal">

					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Name: </label>
						<div class="col-sm-10">
							<input type="text" id="name" name="student_name" class="form-control" placeholder="your name" required>
						</div>
					</div>
					<div class="form-group">
						<label for="surname" class="col-sm-2 control-label">Surname: </label>
						<div class="col-sm-10">
							<input type="text" id="surname" name="student_surname" class="form-control" placeholder="your surname" required>
						</div>
					</div>

					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">Email: </label>
						<div class="col-sm-10">
							<input type="email" id="email" name="student_email" class="form-control" placeholder="your email" required>
						</div>
					</div>
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">Username: </label>
						<div class="col-sm-10">
							<input type="text" id="username" name="student_username" class="form-control" placeholder="your username" required>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">Password: </label>
						<div class="col-sm-10">
							<input type="password" id="password" name="student_password" class="form-control" placeholder="your password" required>
						</div>
					</div>
					<div class="form-group">
						<label for="confirm" class="col-sm-2 control-label">Confirm: </label>
						<div class="col-sm-10">
							<input type="password" id="confirm" name="student_confirm" class="form-control" placeholder="confirm your password" required>
						</div>
					</div>
			

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						  <div class="checkbox" style ="color:blue;">
							<label>
							  <input name="notifications" type="checkbox" value="true"  > I agree to the terms and conditions
							</label>
						  </div>
						</div>
					  </div>
					
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2">
							<button type="submit" class="btn btn-success">
								<span class="glyphicon glyphicon-ok"></span> Submit
							</button>
							<button type="reset" class="btn btn-danger">
								<span class="glyphicon glyphicon-remove"></span> Cancel
							</button>

						</div>
					</div>

				</form>

			</div>
		</div>

	</div>
	<!-- /.container -->
	
	<footer class="footer navbar-inverse">
      <div class="container">
        <div class="row">
			<div class="col-xs-12">
				<p class="text-center">&copy; Copyright 2020 ismgroup16 </p>
			</div>
		</div>
      </div>
    </footer>

	<!-- Place all JavaScript files before the closing body tag -->
	
	<!-- jQuery library (necessary for Bootstrap JavaScript) -->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</body>
</html>
