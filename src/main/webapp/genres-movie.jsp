<%@page import="java.util.List"%>
<%@page import="com.jspider.movieflex_servlet_project.dto.Movie"%>
<%@page import="com.jspider.movieflex_servlet_project.dao.MovieDao"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Landing Page</title>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card img {
	height: 280px;
	width: 100vh;
	object-fit: cover;
}

/* .background-image {
	background-image:
		url('https://user-images.githubusercontent.com/33485020/108069438-5ee79d80-7089-11eb-8264-08fdda7e0d11.jpg');
	background-size: cover;
	background-repeat: no-repeat;
} */
</style>
</head>
<body class="background-image">

	<%
	     List<Movie> movies=(List<Movie>)request.getAttribute("movieDetails");
		String movieType =(String) request.getAttribute("movieSearch");
	
	%>

	<jsp:include page="front-navbar.jsp" />
	<br>
	<br>




	<section class="pt-5 pb-5">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h3 class="mb-3"><%=movieType%></h3>
				</div>
				<div class="col-6 text-right">
					<a class="btn btn-primary mb-3 mr-1"
						href="#carouselExampleIndicators2" role="button" data-slide="prev">
						<i class="fa fa-arrow-left"></i>
					</a> <a class="btn btn-primary mb-3" href="#carouselExampleIndicators2"
						role="button" data-slide="next"> <i class="fa fa-arrow-right"></i>
					</a>
				</div>
				<div class="col-12">
					<div id="carouselExampleIndicators2" class="carousel slide"
						data-ride="carousel">

						<div class="carousel-inner">




							<div class="carousel-item bollywood-item">
								<div class="row">

									<%
									for (Movie movie : movies) {
									%>

									<%
									  String base64Image = Base64.getEncoder().encodeToString(movie.getImageFecth());
									%>

									<div class="col-md-4 mb-4">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="data:image/jpeg;base64,<%=base64Image%>">

										</div>
									</div>
									<%
									}
									%>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- JavaScript dependencies -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script type="text/javascript"
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<script>
		$(document).ready(function() {
			// Add class to the first div
			$(".bollywood-item:first").addClass("active");
			$(".hollywood-item:first").addClass("active");
			$(".tollywood-item:first").addClass("active");
		});
	</script>
</body>
</html>