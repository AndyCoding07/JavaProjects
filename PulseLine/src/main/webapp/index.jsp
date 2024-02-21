<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - PulseLine</title>
<!-- including bootstrap -->
<%@include file="components/bootstrap.jsp"%>

<!-- including navigation bar -->
<%@include file="components/navbar.jsp"%>

<style>
	.shodow{
	box-shadow: 0 0 14px 0 rgba(0, 0, 0, 0, 3);
	}
</style>
</head>

<body>
	<!-- Carousel fading -->
	<div id="carouselExampleFade" class="carousel slide carousel-fade shadow"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="static/2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="static/3.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="static/4.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- cards -->

	<div class="container-fluid mt-5 ">
		<div class="row mb-5">
			<div class="col text-center">
				<div class="card shadow" style="width: 18rem;">
					<img src="static/5.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary btn-sm">click</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card shadow" style="width: 18rem;">
					<img src="static/6.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary btn-sm">click</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card shadow" style="width: 18rem;">
					<img src="static/5.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary btn-sm">click</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card shadow" style="width: 18rem;">
					<img src="static/7.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary btn-sm">click</a>
					</div>
				</div>
			</div>
			<div class="col text-center">
				<div class="card shadow" style="width: 18rem;">
					<img src="static/5.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary btn-sm">click</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<%@include file="components/footer.jsp" %>
</body>
</html>

<!--  
	this is the home page of PulseLine hospital
	bootstrap navbar and footer is include in this using include directive
 -->