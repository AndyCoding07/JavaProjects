<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>

<%@include file="../components/navbar.jsp"%>
<%@include file="../components/bootstrap.jsp"%>

<style type=text/css>
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>
</head>
<body>
	<%
	if (session.getAttribute("admin") == null)
	{
		response.sendRedirect("admin_login.jsp");
	}
	%>
	<div class="card Shadow mx-auto" style="width: 50rem; margin-top: 3rem">
		<div class="container text-center">
			<div class="container text-center">
				<h4 class="mt-3">Admin Page</h4>
				<div class="row p-3 mx-auto mt-3">
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-solid fa-user fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Appointment</h6>
								<a href="#" class="card-link">click</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-solid fa-file-circle-plus fa-5x"
									style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Add
									reports</h6>
								<a href="add_report.jsp" class="card-link">click</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-regular fa-file-pdf fa-3x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Check
									Report</h6>
								<form action="check_reports.jsp" method="post">
									<input type="text" placeholder="patient id : " name="pid"
										size="7"> <br>
									<button type="submit" class="mt-2">Check</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row mt-5 p-3">
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-solid fa-bed fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Add
									Patient</h6>
								<a href="add_patient.jsp" class="card-link">click</a>
							</div>
						</div>
					</div>
					<!-- <div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-regular fa-file fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Blood
									Test Billing</h6>
								<a href="#" class="card-link">click</a>
							</div>
						</div>
					</div> -->
					 <div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-regular fa-trash-can fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Close
									File</h6>
								<a href="#" class="card-link">click</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-solid fa-right-from-bracket fa-5x"
									style="color: blue;"></i>
								<form action=LogOut method="post">
									<input type="submit" value="Logout" class="mt-3 mb-2">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<!-- to center card ( or any content in the column of grid) mx-auto(class) -->