<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.example.stockspring.model.User"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!DOCTYPE html>
<html lang="en">
<head>
<title>Update Company</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./jsp/updateCompanyPageStyle.css" />
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="shortcut icon"
	href="http://www.brianshim.com/webtricks/wp-content/uploads/2012/11/stars_favicon.png"
	type="image/x-icon" />
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


	<div class="header">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid" style="background: black">
			<div class="navbar-header">
				<!--  <img alt="logo" src="logo.png"> -->
			</div>
			<div class="navbar-header">
				<a class="navbar-brand" href="#" style="color: white"><b>&nbsp;Stock
						Exchange Chart</b></a>
			</div>
			<ul class="nav navbar-nav">
				<spring:url value="/importData" var="link1" htmlEscape="true" />
				<li><a href="${link1}">Import Data</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Manage Company<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<spring:url value="/addCompany" var="link2" htmlEscape="true" />
						<li><a href="${link2 }" style="color: white;">Add Company</a></li>
						<spring:url value="/updateCompany" var="link3" htmlEscape="true" />
						<li><a href="${link3 }" style="color: white;">Update
								Company</a></li>
						<spring:url value="/companyList" var="link4" htmlEscape="true" />
						<li><a href="${link4}" style="color: white;">List of all
								Companies</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Manage Exchange<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<spring:url value="/importStock" var="link5" htmlEscape="true" />
						<li><a href="${link5 }" style="color: lightblue;">Register
								New Stock Exchange</a></li>
						<spring:url value="/stockList" var="link6" htmlEscape="true" />
						<li><a href="${link6 }" style="color: white;">List Stock
								Exchange</a></li>
					</ul></li>
				<spring:url value="/ipoRegistration" var="link7" htmlEscape="true" />
				<li><a href="${link7 }">Update IPO details</a></li>

			</ul>
			<div class="nav navbar-nav navbar-right" id="logout">
				<spring:url value="/logout" var="link8" htmlEscape="true" />
				<button class="btn navbar-btn btn-default"
					onclick="location.href = '${link8}';">
					<span class="glyphicon glyphicon-log-out"></span> Logout
				</button>
			</div>
		</div>
		</nav>
	</div>
	
<div class="container">
 <!-- Code starts from here -->
	<h3>Table of  Company name</h3>
<br>
<br>

<table>
<thead>
 <tr>
  <th>Company</th>
  <th>BSE/NSE</th>
  <th>BriefWriteUp</th>
  <th>Manage</th>
 </tr>
</thead>
<tbody id="myTable">
 <tr>
  <td>Raj</td>
  <td>Girish</td>
  <td>Parmar</td>
  <td><button onclick="myFuncion()" type="submit" class="btn btn-primary">Edit</button> &nbsp;  &nbsp;  &nbsp;
  <button onclick="myFuncion()" type="submit" class="btn btn-danger">Delete</button> </td>
 </tr>
 <tr>
  <td>Mohan</td>
  <td>viraj</td>
  <td>koli</td>
  <td><button onclick="myFuncion()" type="submit" class="btn btn-primary">Edit</button> 
  &nbsp;  &nbsp;  &nbsp;
  <button onclick="myFuncion()" type="submit" class="btn btn-danger">Delete</button> </td>
 </tr>
 <tr>
  <td>Jainish</td>
  <td>ratan</td>
  <td>vyas</td>
  <td><button onclick="myFuncion()" type="submit" class="btn btn-primary">Edit</button>
   &nbsp;  &nbsp;  &nbsp;
  <button onclick="myFuncion()" type="submit" class="btn btn-danger">Delete</button> </td>
 </tr>
 <tr>
  <td>Tom</td>
  <td>kim</td>
  <td>zone</td>
  <td><button onclick="myFuncion()" type="submit" class="btn btn-primary">Edit</button> 
  &nbsp;  &nbsp;  &nbsp;
  <button onclick="myFuncion()" type="submit" class="btn btn-danger">Delete</button> </td>
 </tr>
 <tr>
  <td>Rohan</td>
  <td>Prithvi</td>
  <td>koli</td>
  <td><button onclick="myFuncion()" type="submit" class="btn btn-primary">Edit</button> 
  &nbsp;  &nbsp;  &nbsp;
  <button onclick="myFuncion()" type="submit" class="btn btn-danger">Delete</button> </td>
 </tr>
 <tr>
  <td>Vikram</td>
  <td>Girish</td>
  <td>vyas</td>
  <td><button onclick="myFuncion()" type="submit" class="btn btn-primary">Edit</button> 
  &nbsp;  &nbsp;  &nbsp;
  <button onclick="myFuncion()" type="submit" class="btn btn-danger">Delete</button> </td>
 </tr>
</tbody>
</table>
 
 
 
 <!-- Code ends here -->
</div>
<div class="footer">
 <p>Copyright © 2019 Stock Exchange Chart-All Rights Reserved</p>
</div>
</body>
</html>