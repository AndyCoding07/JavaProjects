package com.admin;

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

public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String admin_id = request.getParameter("id");
		String pass = request.getParameter("pass");

		String query = "select * from admin where admin_id=? and password=?";

		
		Connection con;
		PreparedStatement ps;
		ResultSet rs;

		try {
			con = ConnectDb.connect();
			
			ps = con.prepareStatement(query);
			ps.setString(1, admin_id);
			ps.setString(2, pass);
			rs = ps.executeQuery();

			// creating session if row is present and redirecting to welcome.jsp
			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("admin", admin_id);
				response.sendRedirect("admin.jsp");
			}
			else
			{
				response.sendRedirect("admin_login.jsp");
			}

		} catch (Exception e) 
		{
			PrintWriter out = response.getWriter();
			out.println("Server Error, contact hospital");
		}

	}
}