<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MovieRegister</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css"
	rel="stylesheet" />
<style type="text/css">
.gradient-custom {
	/* fallback for old browsers */
	background: #f093fb;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1),
		rgba(245, 87, 108, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to bottom right, rgba(240, 147, 251, 1),
		rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled])
	{
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}
</style>
</head>
<body>
	<%
	String adminMsg = (String) request.getAttribute("adminMsg");
	%>
	<jsp:include page="admin-navbar.jsp"></jsp:include>
	<br>
	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-lg-9 col-xl-7">
					<div class="card shadow-2-strong card-registration"
						style="border-radius: 15px; color: black;">
						<div class="card-body p-3 p-md-0">
							<h3 style="color: green; margin-left: 160px;">Movie-Registration</h3>
							<%
							if (adminMsg != null) {
							%>
							<h5 style="color: pink;"><%=adminMsg%></h5>

							<%
							}
							%>
							<form action="movieRegister" method="post"
								enctype="multipart/form-data">

								<div class="row">
									<div class="col-md-6 mb-4">

										<div data-mdb-input-init class="form-outline">
											<input type="text" id="name"
												class="form-control form-control-lg" name="name" /> <label
												class="form-label" for="name">MovieName:</label>
										</div>

									</div>
									<div class="col-md-6 mb-4">

										<div data-mdb-input-init class="form-outline">
											<input type="date" id="release"
												class="form-control form-control-lg" name="release" /> <label
												class="form-label" for="release">ReleaseDate</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-4 d-flex align-items-center">

										<div data-mdb-input-init class="form-outline datepicker w-100">
											<input type="text" class="form-control form-control-lg"
												id="genrestype" name="genresType" /> <label
												for="genrestype" class="form-label">GenresType</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 d-flex align-items-center">

										<div data-mdb-input-init class="form-outline datepicker w-100">
											<input type="text" class="form-control form-control-lg"
												id="language" name="language" /> <label for="language"
												class="form-label">language</label>
										</div>

									</div>

								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div data-mdb-input-init class="form-outline">
											<input type="text" id="productionhouse"
												class="form-control form-control-lg" name="productionhouse" />
											<label class="form-label" for="productionhouse">productionhouse</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 pb-2">

										<div data-mdb-input-init class="form-outline">
											<input type="text" id="directorname"
												class="form-control form-control-lg" name="directorname" />
											<label class="form-label" for="directorname">directorname</label>
										</div>

									</div>

								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div data-mdb-input-init class="form-outline">
											<input type="text" id="quality"
												class="form-control form-control-lg" name="quality" /> <label
												class="form-label" for="quality">quality</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 pb-2">

										<div data-mdb-input-init class="form-outline">
											<input type="text" id="url"
												class="form-control form-control-lg" name="url" /> <label
												class="form-label" for="url">url</label>
										</div>

									</div>

								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div data-mdb-input-init class="form-outline">
											<input type="text" id="description"
												class="form-control form-control-lg" name="description" /><label
												class="form-label" for="description">Description</label>
										</div>

									</div>
									<div class="col-md-6 mb-4 pb-2">

										<select class="form-select"
											aria-label="Default select example" name="movie">
											<option selected>Movie-Type</option>
											<option value="BollyWood">BollyWood</option>
											<option value="HollyWood">HollyWood</option>
											<option value="TollyWood">TollyWood</option>
										</select>

									</div>

								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div data-mdb-input-init class="form-outline">
											<input type="file" id="image"
												class="form-control form-control-lg" name="image" /><label
												class="form-label" for="image">image</label>
										</div>

									</div>

								</div>


								<div class="mt-0 pt-2" style="margin-left: 250px;">
									<input data-mdb-ripple-init class="btn btn-primary btn-lg"
										type="submit" value="Submit" />
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>