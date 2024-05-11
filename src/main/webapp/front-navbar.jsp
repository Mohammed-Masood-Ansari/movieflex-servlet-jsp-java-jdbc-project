<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	font-family: Arial, sans-serif;
}

.navbar {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: #333;
	padding: 10px 0;
	z-index: 1000;
}

.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 0 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo {
	color: #fff;
	margin: 0;
}

.nav-links {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}

.nav-links li {
	margin-right: 20px;
}

.nav-links li a {
	color: #fff;
	text-decoration: none;
	transition: color 0.3s ease;
}

.nav-links li a:hover {
	color: #ddd;
}

.auth-links a {
	color: #fff;
	text-decoration: none;
	margin-left: 20px;
}

.auth-links a:hover {
	color: #ddd;
}
</style>
</head>
<body>
	<nav class="navbar">
		<div class="container">
			<h1 class="logo">MovieFlex</h1>
			
			<form action="/searchMovie">
				<input type="text" name="search" placeholder="enter movie name">
				<input type="submit" value="search">
			</form>
			
			<div class="auth-links">
				<a href="#">Login</a> <a href="#">Sign Up</a>
			</div>
		</div>
	</nav>
</body>
</html>