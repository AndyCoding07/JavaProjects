<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>

<%@include file = "components/bootstrap.jsp" %>
<%@include file = "components/navbar.jsp" %>
</head>
<body>
<%
	if (session.getAttribute("admin") == null)
	{
		response.sendRedirect("admin_login.jsp");
	}
	%>
	<div class="container mt-5 text-center">
		<div class="card shadow" style="width: 25rem; margin: auto">
			<div class="card-body">

				<form action=AddPatientServlet method="post">
					<div>
						<i class="fa-solid fa-bed fa-5x" style="color: blue;"></i>
						<h4 class="mt-2">Add Patient</h4>
					</div>
					<div class="mb-3 mt-5">
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter full name : "
							required name="fname">
					</div>
					<div class="mb-3 mt-4">
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter file number : "
							required name="file">
					</div>
					<div class="mb-3 mt-4">
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter Disease name : "
							required name="disease">
					</div>
					<div class="mb-3 mt-4">
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter phone number : "
							required name="phone">
					</div>
					<div class="mb-3 mt-4">
						<input type="password" class="form-control"
							id="exampleInputPassword1" placeholder="Enter password" required
							name="pass">
					</div>


					<button type="submit" class="btn btn-primary mt-4"
						style="font-weight: bold">Submit</button>
				</form>

			</div>
		</div>
	</div>
</body>
</html>