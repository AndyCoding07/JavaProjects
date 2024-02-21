package com.dbconnection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetPatientData extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
	HttpServletRequest request;

	private String file; 
	private String fname;
	private String pass;
	private String disease;
	private String phone;

	public String getFile()
	{
		return file;
	}

	public void setFile(String file)
	{
		this.file = file;
	}

	public String getFname()
	{
		return fname;
	}

	public void setFname(String fname)
	{
		this.fname = fname;
	}

	public String getPass()
	{
		return pass;
	}

	public void setPass(String pass)
	{
		this.pass = pass;
	}

	public String getDisease()
	{
		return disease;
	}

	public void setDisease(String disease)
	{
		this.disease = disease;
	}

	public String getPhone()
	{
		return phone;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}
}
