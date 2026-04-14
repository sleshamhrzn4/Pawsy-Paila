<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css">
</head>
<body>
	<nav class="navbar">
		<a href="${pageContext.request.contextPath}/index"> <img
			src="${pageContext.request.contextPath}/images/orange_logo.png"
			alt="Pawsy Paila">
		</a>
		<ul class="nav-links">
			<li><a href="#">Pets</a></li>
			<li><a href="#">Shop</a></li>
			<li><a href="#">Community</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="#">Donate</a></li>
		</ul>
		<button class="login-btn">Log In</button>
	</nav>


</body>
</html>