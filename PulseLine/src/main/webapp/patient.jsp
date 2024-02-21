<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient page</title>

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
	if (session.getAttribute("pid") == null && session.getAttribute("doctor") == null)
	{
		response.sendRedirect("patient_login.jsp");
	}
	%>
	
	<div class="card Shadow mx-auto" style="width: 35rem; margin-top: 8rem">
		<div class="container text-center">
			<div class="container text-center">
			<h4> Patient Page </h4>
				<div class="row p-5">
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-regular fa-file-pdf fa-5x" style="color: blue;"></i>
								<h6 class="card-subtitle m-2 text-body-secondary">Check
									Report</h6>
								<a href="check_reports.jsp">check</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow" style="width: 12rem;">
							<div class="card-body">
								<i class="fa-solid fa-right-from-bracket fa-5x"
									style="color: blue;"></i>
								<form action=LogOut method="post">
									<input type="submit" value="Logout" class="mt-4">
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