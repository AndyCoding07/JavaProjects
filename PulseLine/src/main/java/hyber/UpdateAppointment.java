package hyber;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateAppointment extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int aid = Integer.parseInt(request.getParameter("aid"));
		String astatus = request.getParameter("status");
		
		String query = "update appointment set astatus = ? where aid = ?";
		
		try
		{
			Connection con = ConnectDb.connect();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, astatus);
			ps.setInt(2, aid);
			ps.executeUpdate();
			
			response.sendRedirect("get_appointment.jsp");
		}
		catch (Exception e)
		{}
	}

}
