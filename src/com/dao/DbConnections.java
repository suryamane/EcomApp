package com.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbConnections implements DBConnectionUtil {
	private static Properties dbProperties;
	private static String url;
	@SuppressWarnings("unused")
	private static Driver dbDriver;
	/*
	 * private static String username; private static String password;
	 */
	static Connection conn;
	static {
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "root");
			System.out.println(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Connection getConnection() {
		
		return conn;
	}

	@Override
	public void closeConnection() {

		if (conn != null)
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
}
