<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8180099.jsp"%>
<%@ page import="exercise2_2020_2021_8180099.*, java.util.List" %>


<!DOCTYPE html>
<html lang="en">
	<head>
	<%@ include file = "header_ex2_8180099.jsp" %>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="2η Ατομική Άσκηση - dashboard">
	<title>2η Ατομική Άσκηση - dashboard</title>

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

                             <% if (session.getAttribute("userObj2020") == null) {
	                             request.setAttribute("message", "You are not authorized to access this resource. Please login.");%>                                            
		                   <jsp:forward page="login_ex2_8180099.jsp" />
                               <% }
                   
                                       User user1 = (User)session.getAttribute("userObj2020");

                                 %>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="<%=request.getContextPath() %>/index_ex2_8180099.jsp">Home</a></li>										
						<li><a href="<%=request.getContextPath() %>/about_ex2_8180099.jsp">About</a></li>
						<li><a href="<%=request.getContextPath() %>/dashboard_ex2_8180099.jsp">Dashboard</a></li>					
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><p class="navbar-text">Signed in as <%=user1.getUsername()%></p></li>
			        	<li><a href="<%=request.getContextPath() %>/logout_ex2_8180099.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a></li>			            
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

		
                
		<div class="container theme-showcase" role="main">

			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>2η Ατομική Άσκηση</h1>
			</div>

			<% String username = request.getParameter("uname");
			   UserDAO udao = new UserDAO();
			   try {
				   User user2 = udao.findUser(username);
				   if (user2 != null) { %>
	
				  <div class="page-header">
					<h1>Profile of: <code> <%=user2.getName() %>
					<%=user2.getSurname()%> </code></h1>
				  </div>
				  <br><br>
				  <ul class="list-unstyled">
				  <li><b>Name: </b><%=user2.getName() %></li>
				  <li><b>Surname: </b><%=user2.getSurname() %></li>
				  <li><b>Email: </b><%=user2.getEmail() %></li>
				  <li><b>Username: </b><%=username %></li>
				  </ul>
				   <%}  else { %>
					   <div class="alert alert-danger text-center" role="alert"><b>User not found.</b></div>
				  <%}
				   
			   }catch (Exception e) {
				   throw new Exception(e.getMessage());
			   }	
			%>
			
	</div>
	  <!-- /container -->

	 <%@ include file = "footer_ex2_8180099.jsp" %>
	</body>
</html>