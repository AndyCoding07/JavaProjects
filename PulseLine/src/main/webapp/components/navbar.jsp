<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Bar</title>

<style type=text/css>
	.nav-item{
		padding-left: 20px;
	}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark p-3 mt-2 mb-2">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"> <i
				class="fa-regular fa-hospital"></i> Pulse Line
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="admin_login.jsp">Admin</a></li>
					<li class="nav-item"><a class="nav-link" href="doctor_login.jsp">Doctor</a></li>
					<li class="nav-item"><a class="nav-link" href="patient_login.jsp">Patient</a></li>
					<li class="nav-item"><a class="nav-link" href="help.jsp">help</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
</body>
</html>