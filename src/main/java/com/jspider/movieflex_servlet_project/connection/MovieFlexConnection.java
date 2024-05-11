package com.jspider.movieflex_servlet_project.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MovieFlexConnection {

	/*
	 * connection method
	 */
	public static Connection getMovieFlexConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/movieflex";
			String user = "root";
			String pass = "root";
			return DriverManager.getConnection(url, user, pass);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}
	}

}
