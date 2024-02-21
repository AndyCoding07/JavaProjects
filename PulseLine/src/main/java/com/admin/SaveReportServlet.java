package com.admin;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dbconnection.ConnectDb;

@MultipartConfig
public class SaveReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int patient_id = Integer.parseInt(request.getParameter("id"));
		Part file = request.getPart("myfile");
		String name = request.getParameter("report_name");
		
		InputStream inputStream = file.getInputStream();
		
		String query = "insert into reports (patient_id, report_pdf, report_name) values (?, ?, ?)";
		
		PrintWriter out = response.getWriter();
		Connection con;
		PreparedStatement ps;	
		try
		{
			con = ConnectDb.connect();
			ps = con.prepareStatement(query);
			ps.setInt(1, patient_id);
			ps.setBlob(2, inputStream);
			ps.setString(3, name);
			
			ps.executeUpdate();
			response.sendRedirect("add_report.jsp");
			
		}
		catch (Exception e)
		{
			out.println("error : "+e);
		}
	
	}
}
