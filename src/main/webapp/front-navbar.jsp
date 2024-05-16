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

.container .auth-links {
	margin-left: 380px;
}

.logo {
	color: #fff;
	margin: 0;
}

.auth-links a {
	color: #fff;
	text-decoration: none;
	margin-left: 10px; /* Reduced margin */
}

.auth-links a:hover {
	color: #ddd;
}

.auth-links {
	display: inline-block;
	position: relative;
}

.auth-links .dropdown-content {
	display: none;
	position: absolute;
	background-color: green;
	min-width: 160px;
	padding: 8px;
	z-index: 1;
}

.auth-links:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	display: block;
	text-decoration: none;
	color: #fff;
	padding: 6px 0;
}

.signup-link {
	display: inline-block;
	margin-left: 10px; /* Reduced margin */
}

.signup-link a {
	color: #fff;
	text-decoration: none;
}

.signup-link a:hover {
	color: #ddd;
}

/* Search input field styles */
.container form {
	margin-left: 50px;
	position: relative;
}

.container form input[type="text"] {
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 300px;
}

.container form input[type="submit"] {
   
	background-color: #007bff;
	border: none;
	color: #fff;
	padding: 5px 40px; /* Adjusted padding to accommodate icon */
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.3s;
	position: relative;
}

.container form input[type="submit"]:hover {
	background-color: #0056b3;
}

/* Search button icon */
.container form input[type="submit"]::after {
    
	content: "\1F50D";
	margin-left: 5px;
	font-size: 20px;
}
/* body {
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
	justify-content:space-between;
	align-items: center;
}
.container form{
  margin-left: 70px;
}
.container .auth-links{
    margin-left: 500px;
}


.logo {
	color: #fff;
	margin: 0;
}

.auth-links a {
	color: #fff;
	text-decoration: none;
	margin-left: 20px;
}

.auth-links a:hover {
	color: #ddd;
}

.auth-links {
	display: inline-block;
	position: relative;
}

.auth-links .dropdown-content {
	display: none;
	position: absolute;
	background-color: green;
	min-width: 160px;
	padding: 8px;
	z-index: 1;
}

.auth-links:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	display: block;
	text-decoration: none;
	color: #fff;
	padding: 6px 0;
}

.signup-link {
	display: inline-block;
	margin-left: 20px;
}

.signup-link a {
	color: #fff;
	text-decoration: none;
}

.signup-link a:hover {
	color: #ddd;
} */
</style>
</head>
<body>
	<!-- <nav class="navbar">
		<div class="container">
			<h1 class="logo">MovieFlex</h1>

			<form action="/searchMovie">
				<input type="text" placeholder="enter your movie name"> <input
					type="submit" value="search">
			</form>

			<div class="auth-links">
				<a href="#">Login</a>
				<div class="dropdown-content">
					<a href="user-login.jsp">User Login</a> <a href="admin-login.jsp">Admin
						Login</a>
				</div>
			</div>

			<div class="signup-link">
				<a href="user-register.jsp">Sign Up</a>
			</div>


		</div>
	</nav>

	<script>
		// JavaScript to handle redirection based on selection
		const adminLoginLink = document.querySelector('a[href="admin-login.jsp"]');
		const userLoginLink = document.querySelector('a[href="user-login.jsp"]');

		adminLoginLink.addEventListener('click', () => {
			window.location.href = adminLoginLink.getAttribute('href');
		});

		userLoginLink.addEventListener('click', () => {
			window.location.href = userLoginLink.getAttribute('href');
		});
	</script> -->
	<nav class="navbar">
		<div class="container">
			<h1 class="logo">MovieFlex</h1>

			<form action="searchMovie" method="post">
				<input type="text" placeholder="Enter your movie name" name="search" /> <input
					type="submit" value="Search" />
			</form>

			<div class="auth-links">
				<a href="#">Login</a>
				<div class="dropdown-content">
					<a href="user-login.jsp">User Login</a> <a href="admin-login.jsp">Admin
						Login</a>
				</div>
			</div>

			<div class="signup-link">
				<a href="user-register.jsp">SignUp</a>
			</div>
		</div>
	</nav>
</body>
</html>