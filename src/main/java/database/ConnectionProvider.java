package database;

import java.sql.*;

public class ConnectionProvider {

	public static Connection getCon() throws Exception {

		System.out.println("Before trying to up the connection. Prinsa");
		Connection dbcon = null;
		try {
			System.out.println("Trying to up the connection. Prinsa");
			String url = "jdbc:mysql://localhost:3306/onlineshop";
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbcon = DriverManager.getConnection(url, "root", "root");
			System.out.println("Setting up the connection. success");
			return dbcon;

		} catch (Exception e) {
			System.out.println("Exception in getCon() Prinsa");
			System.out.println(e);
			return null;
		}
	
	}

}