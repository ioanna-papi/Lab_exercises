<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error_ex2_8180099.jsp"%>
<%@ page import="exercise2_2020_2021_8180099.*" %>

<!DOCTYPE html>
<html lang="en">
	<head>
	<%@ include file = "header_ex2_8180099.jsp" %>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="2η Ατομική Άσκηση - index">
	<title>Home Page</title>

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

                                     <% if (session.getAttribute("userObj2020") == null) { %>
                                          <ul class="nav navbar-nav">
	                                    	<li class="active"><a href="<%=request.getContextPath() %>/index_ex2_8180099.jsp">Home</a></li>		
						<li><a href="<%=request.getContextPath() %>/about_ex2_8180099.jsp">About</a></li>
					</ul>
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="<%=request.getContextPath() %>/register_ex2_8180099.jsp">Register</a></li>
                                        <li><a href="<%=request.getContextPath() %>/login_ex2_8180099.jsp">Sign in</a></li>
                                    </ul>
                                   <% } else {
                                              User user1 = (User)session.getAttribute("userObj2020"); %>
                                          <ul class="nav navbar-nav">
	                                    	<li class="active"><a href="<%=request.getContextPath() %>/index_ex2_8180099.jsp">Home</a></li>		
						<li><a href="<%=request.getContextPath() %>/about_ex2_8180099.jsp">About</a></li>
                                                <li><a href="<%=request.getContextPath() %>/dashboard_ex2_8180099.jsp">Dashboard</a></li>
					  </ul>
                                         <ul class="nav navbar-nav navbar-right">
						<li><p class="navbar-text">Signed in as <%=user1.getUsername()%></p></li>
			        	<li><a href="<%=request.getContextPath() %>/logout_ex2_8180099.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a></li>			            
			                 </ul>		
                               <% } %>


				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1> Ktellme </h1>
			</div>

			<!-- Page Title -->
			<div class="page-header">
				<h1>Ioanna Maria Papidaki</h1>
			</div>
			
		</div>
		<!-- /container -->
       <%@ include file = "footer_ex2_8180099.jsp" %>
	</body>
</html>