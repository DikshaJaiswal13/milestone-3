 <%@ page language="java" contentType="text/html; charset=UTF-8" import="com.example.stockspring.model.User"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html lang="en">
<head>

<title>Logout</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="./jsp/logoutStyle.css">
<link rel="shortcut icon"
	href="http://www.brianshim.com/webtricks/wp-content/uploads/2012/11/stars_favicon.png"
	type="image/x-icon" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%-- <%response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires", 0);
%>

<c:if test="${sessionScope.user.id==null }">
<%response.sendRedirect("/login"); %>
</c:if>

<% User user=(User)request.getAttribute("user"); %> --%>

	<div class="container">
		 <!-- <blockquote class="blockquote text-center"> --><br><br><br><br><br><br>
	<br><br>  
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
		<div id="login-box">
		<p><b><h2>You have logged out Successfully!</h2></b></p>
		
		<spring:url value="/login" var="link9" htmlEscape="true" />
		<center><a href="${link9 }"><b><h3>Go to Login Page</h3></b></a></center>
		</div>
		</div>
		<div class="col-md-3"></div>
	</div>
	<!-- </blockquote> -->
	</div>
</body>
</html>