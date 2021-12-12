<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ page import="exercise1_b_2020_2021_8180099.*" %>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		
		<%@ include file = "header_ex1_b_8180099.jsp" %>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="1η Ατομική Άσκηση, Part B - Error page">
		<title>1η Ατομική Άσκηση, Part B - Error page</title>

	</head>

	<body>

		<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">8180099</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="<%=request.getContextPath() %>/index_ex1_b_8180099.jsp">Home</a></li>										
						<li><a href="<%=request.getContextPath() %>/about_ex1_b_8180099.jsp">About</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><p class="navbar-text">Signed in as USERNAME</p></li>
			            <li><a href="<%=request.getContextPath() %>/logout_ex1_b_8180099.jsp">
								<span class="glyphicon glyphicon-log-out"></span> Sign out
							</a>
						</li>								        	
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>1η Ατομική Άσκηση, Part B</h1>
			</div>
<% if(exception != null) { %>
			<!-- Page Title -->
			<div class="page-header">
				<h1>Σφάλμα</h1>
			</div>		

			<div class="alert alert-danger" role="alert">
				<p>
					<b>Message: </b> <%= exception.getMessage() %>
				</p>
				<p>
					<b>Class: </b> <%= exception.getClass() %>
				</p>
			</div>
<% } %>			
		</div>
		<!-- /container -->

		<%@ include file = "footer_ex1_b_8180099.jsp" %>
	</body>
</html>