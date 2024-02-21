<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%@ page import="com.dbconnection.ConnectDb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>appointments</title>
<%@include file="components/navbar.jsp"%>
<%@include file="components/bootstrap.jsp"%>
</head>
<body>

	<div class="container text-center mt-5">
		<table
			class="table table-secondary table-striped table-bordered border-dark">
			<thead>
				<tr>
					<th scope="col">appointment id</th>
					<th scope="col">patient id</th>
					<th scope="col">Status</th>
					<th scope="col">Date</th>
					<th scope="col">slot</th>
					<th scope="col">update</th>
				</tr>
			</thead>
			<%
			if (session.getAttribute("doctor") == null)
			{
				response.sendRedirect("doctor_login.jsp");
			}
			try
			{
				Connection con = ConnectDb.connect();

				String str = (String) session.getAttribute("doctor");
				int id = Integer.parseInt(str);

				String query = "select aid, patient_id, astatus, adate, slot from appointment where id = ?";

				PreparedStatement ps = con.prepareStatement(query);
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();

				while (rs.next())
				{
			%><tbody>
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getInt(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td>
						<form action="UpdateAppointment" method="post">
							<select name="status" required>
								<option value="">--select--</option>
								<option value="cancel">Cancel</option>
								<option value="completed">Completed</option>
								<option value="pending">Pending</option>
							</select>
							<input type="hidden" name="aid" value="<%=rs.getInt(1)%>">
							<button class="submit btn-success">update</button>
						</form>
					</td>
				</tr>
			</tbody>
			<%
			}
			}
			catch (Exception e)
			{
			out.println("Errot : " + e);
			}
			%>
		</table>
		<%

		%>
	</div>

</body>
</html>