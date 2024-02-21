package hyber;

import java.sql.*;

public class ConnectDb 
{
	public static Connection connect() throws Exception
	{
		String url = "jdbc:mysql://localhost:3306/java_project";
		String user = "root";
		String pass = "20020757";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);

		return con;
	}
}
