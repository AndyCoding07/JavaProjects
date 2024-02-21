<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<%@include file="components/bootstrap.jsp"%>
<style type=text/css>
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>

<%@include file="components/navbar.jsp"%>
</head>
<body>
	<div class="container mt-5 text-center">
		<div class="card shadow" style="width: 25rem; margin: auto">
			<!-- margin:auto (to center the card)-->
			<div class="card-body">
				<form action=AdminLoginServlet method="post">
					<div>
						<i class="fa-solid fa-user fa-5x" style="color: mediumslateblue;"></i>
						<h4 class="mt-2">Admin Login</h4>
					</div>
					<div class="mb-3 mt-5">
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" required
							placeholder="Enter admin id" name="id">
					</div>
					<div class="mb-3 mt-4">
						<input type="password" class="form-control"
							id="exampleInputPassword1" required placeholder="Enter password"
							name="pass">
					</div>

					<button type="submit" class="btn btn- mt-4"
						style="font-weight: bold; background-color: mediumslateblue; color: white;">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<%@include file="components/footer.jsp"%>
</body>
</html>