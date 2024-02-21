package hyber;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddPatientServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String file = request.getParameter("file");
		String fname = request.getParameter("fname");
		String pass = request.getParameter("pass");
		String disease = request.getParameter("disease");
		String phone = request.getParameter("phone");
		
		String query = "insert into patient (file, patient, password, disease, phone) values(?, ?, ?, ?, ?)";
		PrintWriter out = response.getWriter();
		try
		{
			Connection con = ConnectDb.connect();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, file);
			ps.setString(2, fname);
			ps.setString(3, pass);
			ps.setString(4, disease);
			ps.setString(5, phone);
			
			ps.executeUpdate();
			out.println("<h3> Patient added successfully <h3>");
		}
		catch (Exception e)
		{
			
			out.println("Error inserting : "+e);
		}
				
	}

}
