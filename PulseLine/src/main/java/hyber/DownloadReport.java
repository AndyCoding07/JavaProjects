package hyber;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadReport extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int report_id = Integer.parseInt(request.getParameter("rid"));
		Connection con;
		try
		{
			
			con = ConnectDb.connect();
			String query = "select report_pdf, report_name, report_date from reports where report_id = ?";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, report_id);
			ResultSet rs = ps.executeQuery();

			if (rs.next())
			{
				Blob b = rs.getBlob(1);
				String report_name = rs.getString(2);
				// ... (Database connection and retrieval of PDF bytes as 'pdfBytes')

				byte[] pdfBytes = b.getBytes(1, (int) b.length());

				// Set response headers for PDF download
				response.setContentType("application/pdf");
				response.setContentLength(pdfBytes.length);
				response.setHeader("Content-Disposition", "attachment; filename="+report_name+".pdf");

				// Write PDF data to response
				try (OutputStream out = response.getOutputStream())
				{
					out.write(pdfBytes);
				}
			}
		}
		catch (Exception e)
		{

			PrintWriter out = response.getWriter();
			out.println("error : " + e);
		}
	}

}
