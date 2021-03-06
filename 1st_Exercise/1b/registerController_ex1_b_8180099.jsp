<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error_ex1_b_8180099.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file = "header_ex1_b_8180099.jsp" %>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Lesson 3 example">
	
	<title>Registration</title>
	
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
</div>

<%
String name1 = request.getParameter("student_name");
String surname1 = request.getParameter("student_surname");
String email1 = request.getParameter("student_email");
String username1 = request.getParameter("student_username");
String password1 = request.getParameter("student_password");
String confirm1 = request.getParameter("student_confirm");
String notification = request.getParameter("notifications");
name1 = new String(name1.getBytes("ISO-8859-1"), "UTF-8");
surname1 = new String(surname1.getBytes("ISO-8859-1"), "UTF-8");

if (name1.length()>2 && surname1.length()>2 && username1.length()>4 && password1.length()>4 && password1.equals(confirm1)&& notification!=null){

%>
<div class="container theme-showcase" role="main">
<h3>Registration almost done!</h3>
			<div class="alert alert-success" role="alert">
			<b>Note:</b> A verification link has been send to the email: <%=email1 %>
			</div>
  			<ul class = "list-unstyled">
  			<li> <b>Name:</b> <%=name1 %> </li>
  			<li> <b>Surname:</b> <%=surname1 %> </li>
  			<li> <b>Email:</b> <%=email1 %> </li>
  			<li> <b>Username:</b> <%=username1 %></li>
  			</ul> 
</div>
<%} %>

<% 
if (name1.length()<3 || surname1.length()<3 || username1.length()<5 || password1.length()<5 || !(password1.equals(confirm1)) ||notification==null ){
%>


<div class="container theme-showcase" role="main">
<h3>Registration form has errors</h3>
			<div class="alert alert-danger" role="alert">
  			<ul class = "list-unstyled">
  			<li> 1. Surname must be at least 3 characters long </li>
  			<li> 2. Username must be at least 5 characters long </li>
  			<li> 3. Password must be at least 5 characters long </li>
  			<li> 4. Password and confirm do not match</li>
  			<li> 5. You must agree to terms and conditions</li>
   			</ul> 
			</div>
			<a class="btn btn-primary" href="register_ex1_b_8180099.jsp" role="button"> < Back to the form</a>
</div>
<%} %>     		

<%@ include file = "footer_ex1_b_8180099.jsp" %>
</body>
</html>






