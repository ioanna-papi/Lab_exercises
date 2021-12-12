<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error_ex1_b_8180099.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file = "header_ex1_b_8180099.jsp" %>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="1η Ατομική Άσκηση, Part B - register">
	
	<title>Registration</title>
	
</head>
<body>
	
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header_ex1_b�_8180099">
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
            <li><a href="index_ex1_b_8180099.jsp">Home</a></li>            
            <li class="active"><a href="register_ex1_b_8180099.jsp">Register</a></li>
	    <li><a href="about_ex1_b_8180099.jsp">About</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

      <div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1> 1η Ατομική Άσκηση- Part B </h1>
			</div>
			<h3>Registration Form</h3>
			<div class="alert alert-warning" role="alert">
  			<h5 align ="center" >Please fill in the following form to create an account.</h5>
			</div>
       </div>

	
	<div class="container">

		<div class="row">
			<div class="col-xs-12 col-md-10 col-lg-8">

				<form action="registerController_ex1_b_8180099.jsp" method="POST" class="form-horizontal">

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
	
<%@ include file = "footer_ex1_b_8180099.jsp" %>
</body>
</html>
