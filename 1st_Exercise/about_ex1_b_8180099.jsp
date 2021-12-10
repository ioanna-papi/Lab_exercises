<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error_ex1_b_8180099.jsp"%>
<%@ page import="exercise1_b_2020_2021_8180099.*" %>

<!DOCTYPE html>
<html lang="en">
	<head>
	<%@ include file = "header_ex1_b_8180099.jsp" %>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="1η Ατομική Άσκηση, Part B - index">
	<title>Home Page</title>

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

            <% if (session.getAttribute("userObj2020") == null) { %>
                    <ul class="nav navbar-nav">
                         <li><a href="<%=request.getContextPath() %>/index_ex1_b_8180099.jsp">Home</a></li>
	                 <li class="active"><a href="<%=request.getContextPath() %>/about_ex1_b_8180099.jsp">About</a></li>		
		    </ul>
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="<%=request.getContextPath() %>/register_ex1_b_8180099.jsp">Register</a></li>
                         <li><a href="<%=request.getContextPath() %>/login_ex1_b_8180099.jsp">Sign in</a></li>
                     </ul>
             <% } else {
                      User user1 = (User)session.getAttribute("userObj2020"); %>
                    <ul class="nav navbar-nav">	
	                <li><a href="<%=request.getContextPath() %>/index_ex1_b_8180099.jsp">Home</a></li>
                        <li class="active"><a href="<%=request.getContextPath() %>/about_ex1_b_8180099.jsp">About</a></li>
                        <li><a href="<%=request.getContextPath() %>/dashboard_ex1_b_8180099.jsp">Dashboard</a></li>
		    </ul>
                    <ul class="nav navbar-nav navbar-right">
		        <li><p class="navbar-text">Signed in as <%=user1.getUsername()%></p></li>
	                <li><a href="<%=request.getContextPath() %>/logout_ex1_b_8180099.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a></li>			            
	             </ul>		
                     <% } %>

          </div>
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

     <%@ include file = "footer_ex1_b_8180099.jsp" %>

      </body>
</html>
