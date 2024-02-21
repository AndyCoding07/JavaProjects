<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save report</title>
<%@include file="components/bootstrap.jsp"%>
<style type=text/css>
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>

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
			<!-- margin:auto (to center the card)-->
			<div class="card-body">
				<form action=SaveReportServlet method="post"
					enctype="multipart/form-data">
					<div>
						<i class="fa-solid fa-file-circle-plus fa-5x" style="color: blue;"></i>
						<h4 class="mt-2">Save report</h4>
					</div>
					<div class="mb-3 mt-5">
						<input type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" required
							placeholder="Enter patient id " name="id">
					</div>

					<select class="form-select" aria-label="Report name : " name="report_name">
						<option value="CBC">CBC</option>
						<option value="LFT">LFT</option>
						<option value="HB">HB</option>
						<option value="RBC">RBC</option>
						<option value="Blood sugar">Blood sugar</option>
					</select>

					<div class="row mb-3 mt-4 justify-content-center">
						<div class="col">
							<input type="file" id="myfile" name="myfile" class="mt-2">
						</div>

					</div>

					<button type="submit" class="btn btn- mt-5"
						style="font-weight: bold; background-color: mediumslateblue; color: white;">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<%@include file="components/footer.jsp"%>
</body>
</html>