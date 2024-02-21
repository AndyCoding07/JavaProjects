<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor page</title>

<%@include file="components/navbar.jsp"%>
<%@include file="components/bootstrap.jsp"%>

<style type=text/css>
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>
</head>
<body>
	<%
	if (session.getAttribute("doctor") == null)
	{
		response.sendRedirect("doctor_login.jsp");
	}
	%>
	<!-- <div class = "mt-5"></div> -->
	<div class="card Shadow mx-auto" style="width: 55rem; margin-top: 8rem">
		<div class="container text-center">
			<div class="container text-center">
				<h4>Doctor Page</h4>
				<div class="row p-5">
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-regular fa-file-pdf fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Check
									Report</h6>
								<form action="check_reports.jsp" method="post">
									<input type="text" placeholder="patient id : " name="pid"
										size="10"> <br>
									<button type="submit" class="mt-2">Check</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-regular fa-file-pdf fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Appointments</h6>
								<form action="get_appointment.jsp" method="post">
									<button type="submit" class="mt-2">check</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-solid fa-right-from-bracket fa-5x"
									style="color: blue;"></i>
								<form action=LogOut method="post">
									<input type="submit" value="Logout" class="mt-5">
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