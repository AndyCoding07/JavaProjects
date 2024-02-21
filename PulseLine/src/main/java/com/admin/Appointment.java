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

import com.dbconnection.ConnectDb;

public class Appointment extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		/*
		 * getAvailableTimeSlots getAppointmentByPatient getAppointmentByDoctor
		 * getAllAppointments
		 */

		int pid = Integer.parseInt(request.getParameter("pid"));
		String date = request.getParameter("date");
		String doctor_name = request.getParameter("doctor");
		String slot = request.getParameter("slot");
		String status = "Pending";
		int did = 0;

		// we will get first the doctor id
		String query = "select id from doctor where doctor_name = ?";

		PrintWriter out = response.getWriter();
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
		try
		{
			con = ConnectDb.connect();
			ps = con.prepareStatement(query);
			ps.setString(1, doctor_name);
			rs = ps.executeQuery();
			if (rs.next())
			{

				out.println("row exists..");
			}
			did = rs.getInt(1);
		}
		catch (Exception e)
		{
			out.println("error" + e);
		}

		query = "insert into appointment (patient_id, id , adate, astatus, slot) values (?, ? , ?, ?, ?)";
		try
		{
			con = ConnectDb.connect();
			ps = con.prepareStatement(query);
			ps.setInt(1, pid);
			ps.setInt(2, did);
			ps.setString(3, date);
			ps.setString(4, status);
			ps.setString(5, slot);
			ps.executeUpdate();
			
			response.sendRedirect("admin.jsp");
		}
		catch (Exception e)
		{
			System.out.println("error" + e);
		}

	}

}
