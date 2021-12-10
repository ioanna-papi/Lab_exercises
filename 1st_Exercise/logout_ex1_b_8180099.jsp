<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex1_b_8180099.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
	<head>
	<%@ include file = "header_ex1_b_8180099.jsp" %>
	<meta http-equiv="refresh" content="2;url=<%=request.getContextPath() %>/index_ex1_b_8180099.jsp" />
		
	<meta name="description" content="1η Ατομική Άσκηση, Part B - Sign out">
	
	<title>1η Ατομική Άσκηση, Part B - Sign out</title>
	
	</head>
	<body>	

		<div class="container" role="main">

			<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία</div>		

		</div>
		<!-- /container -->

		<%@ include file = "footer_ex1_b_8180099.jsp" %>
		
	</body>
</html>
