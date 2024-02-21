<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%@ page import="com.dbconnection.ConnectDb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports</title>
<%@include file="components/navbar.jsp"%>
<%@include file="components/bootstrap.jsp"%>
</head>
<body>

	<!-- Todo - dynamic table of reports according to patient id with download button download button sends specific report id to DownloadReport servlet  -->

	<div class="container text-center mt-5">
		<table class="table table-secondary table-striped table-bordered border-dark">
			<thead>
				<tr>
					<th scope="col">Report Id</th>
					<th scope="col">Report Date</th>
					<th scope="col">Report Name</th>
					<th scope="col">Download Report</th>
				</tr>
			</thead>
			<%
			if (session.getAttribute("pid") == null && session.getAttribute("doctor") == null && session.getAttribute("admin") == null)
			{
				response.sendRedirect("patient_login.jsp");
			}

			Connection con = ConnectDb.connect();

			int id = 0;
			if(session.getAttribute("pid") != null)
			{
				id = (int) session.getAttribute("pid");
			}
			if(session.getAttribute("doctor") != null || session.getAttribute("admin") != null)
			{
				id = Integer.parseInt(request.getParameter("pid"));
			}
			
			String query = "Select report_id, report_date, report_name from reports where patient_id = ?";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next())
			{
			%><tbody>
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td>
						<form action="DownloadReport" method="post">
							<input type="hidden" name="rid" value="<%=rs.getInt(1)%>">
							<button class="submit btn-success">
								<i class="fa fa-download"></i> Download
							</button>
						</form>
					</td>
				</tr>
			</tbody>
			<%
			}
			%>
		</table>
	</div>

</body>
</html>