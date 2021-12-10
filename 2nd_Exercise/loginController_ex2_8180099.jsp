<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8180099.jsp"%>
<%@ page import="exercise2_2020_2021_8180099.*" %>	

   <% String username1 = request.getParameter("username");
      String passwd = request.getParameter("password");
      UserDAO u1 = new UserDAO(); %>
      <%
      try{
           User result = u1.authenticate(username1,passwd); 
           session.setAttribute("userObj2020",result);
           //response.sendRedirect("dashboard_ex2_8180099.jsp");
      %>
      <jsp:forward page = "dashboard_ex2_8180099.jsp"/>

      <% } catch(Exception exception){
		   request.setAttribute("message","Wrong username or password");
           //response.sendRedirect("login_ex2_8180099.jsp");
      %>
      <jsp:forward page="login_ex2_8180099.jsp"/>
      <% } %>