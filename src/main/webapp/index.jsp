<%@page import="java.util.Base64"%>
<%@page import="com.jspider.movieflex_servlet_project.dto.Movie"%>
<%@page import="java.util.List"%>
<%@page import="com.jspider.movieflex_servlet_project.dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<style type="text/css">
.300-px-wide {
	width: 200px;
	height: 200px;
}
</style>

</head>
<body>

	<%
	MovieDao dao = new MovieDao();

	List<Movie> movies = dao.getAllMovieDetailsDao();
	%>

	<jsp:include page="front-navbar.jsp" />
	<br>
	<br>

	<!-- <div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel" class="300-px-wide">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="10000">
				<img
					src="https://www.news18.com/web-stories/entertainment/9-big-hindi-movies-releasing-soon/assets/6.jpeg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img
					src="https://www.news18.com/web-stories/entertainment/9-big-hindi-movies-releasing-soon/assets/6.jpeg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="https://www.news18.com/web-stories/entertainment/9-big-hindi-movies-releasing-soon/assets/6.jpeg"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
 -->

	<h4 style="margin-top: 40px;">BOLLYWOOD:</h4>

	<div style="display: flex; width: 100VW; align-items: center;">
		<%
		for (Movie movie : movies) {
		%>

		<%
		if (movie.getType().equalsIgnoreCase("BOLLYWOOD")) {
		%>
		<div class="card" style="width: 18rem;">
			<img
				src="<%=movie.getUrl()%>"
				class="card-img-top" alt="...">
			<ul class="list-group list-group-flush">
				<a href="#"><li class="list-group-item">ClickHere</li></a>
			</ul>
		</div>

		<%
		}
		%>
		<%
		}
		%>
	</div>

	<h4 style="margin-top: 40px;">HOLLYWOOD:</h4>

	<div style="display: flex; width: 100VW; align-items: center;">
		<%
		for (Movie movie : movies) {
		%>

		<%
		if (movie.getType().equalsIgnoreCase("HOLLYWOOD")) {
		%>
		<div class="card" style="width: 18rem;">
			<img
				src="<%=movie.getUrl()%>"
				class="card-img-top" alt="...">
			<ul class="list-group list-group-flush">
				<a href="#"><li class="list-group-item">ClickHere</li></a>
			</ul>
		</div>

		<%
		}
		%>
		<%
		}
		%>
	</div>

	<h4 style="margin-top: 40px;">TOLLYWOOD:</h4>

	<div style="display: flex; width: 100VW; align-items: center;">
		<%
		for (Movie movie : movies) {
		%>

		<%
		if (movie.getType().equalsIgnoreCase("TOLLYWOOD")) {
			String base64Image = Base64.getEncoder().encodeToString(movie.getImageFecth());
		%>
		<div class="card" style="width: 18rem;">
			<img
				src="data:image/jpeg;base64,<%=base64Image%>"
				class="card-img-top" alt="...">
			<ul class="list-group list-group-flush">
				<a href="#"><li class="list-group-item">ClickHere</li></a>
			</ul>
		</div>

		<%
		}
		%>
		<%
		}
		%>
	</div>
</body>
</html>