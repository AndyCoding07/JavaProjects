<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book appointent</title>

<%@include file="components/bootstrap.jsp"%>
<%@include file="components/navbar.jsp"%>
</head>
<body>
<%
	if (session.getAttribute("admin") == null)
	{
		response.sendRedirect("admin_login.jsp");
	}
	%>
	<div class="container mt-5 text-center">
		<div class="card shadow" style="width: 30rem; margin: auto">
			<div class="card-body">

				<form action=Appointment method="post">
					<div>
						<i class="fa-solid fa-stethoscope fa-5x" style="color: blue"></i>

						<h4 class="mt-2">Book Appointment</h4>
					</div>
					
					<div class = "mb-3 mt-5"> 
						<input type = "text" class = "form-control" name = "pid" placeholder= "Enter patient id :">
					</div>
					
					<div class = "mb-3 mt-5"> 
						<input type = "date" class = "form-control" name = "date">
					</div>
					
					<div class="card mb-3 mt-5">
						<select class = "form-control" name="doctor" required> 
							<option value = ""> --select-- </option>
							<option value = "abc"> abc </option>
							<option value = "klm"> klm </option>
						</select>
					</div>
					
					<div class="card mb-3 mt-5">
						<select class = "form-control" name="slot" required>
							<option value = ""> --select-- </option>
							<option value = "8am - 12pm"> 8am - 12am </option>
							<option value = "3pm - 7pm"> 3pm - 7pm </option>
						</select>
					</div>
					
					<button type="submit" class="btn btn-primary mt-4"
						style="font-weight: bold">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>