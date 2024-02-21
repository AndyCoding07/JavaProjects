package com.patient;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbconnection.ConnectDb;

public class PatientLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String file = request.getParameter("file");
		String pass = request.getParameter("pass");
		int id = Integer.parseInt(request.getParameter("pid"));
		
		String query = "select * from patient where patient_id = ? and file=? and password=?";

		Connection con;
		PreparedStatement ps;
		ResultSet rs;

		try {
			con = ConnectDb.connect();
			
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ps.setString(2, file);
			ps.setString(3, pass);
			rs = ps.executeQuery();

			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("pid", id);
				response.sendRedirect("patient.jsp");
			}
			else
			{
				response.sendRedirect("patient_login.jsp");
			}

		} catch (Exception e) 
		{
			PrintWriter out = response.getWriter();
			out.println("Server Error, contact hospital");
		}

	}
}

/* 
 * if user, admin, doctor login in success fully we will be creating a session 
 * so that page only can be accessed if session is created, and no one can access the information without creating a session
 * or we can say directly entering the url 
 * 
 * session should be checked on pages which want to keep secure 
 * session should be created on the page of login 
 */
