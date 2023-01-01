package com.Contribute.Tech.Blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionProvider {
	private static Connection con;

	public static Connection getCOnnection() {
		if (con == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tech blog", "root", "");

			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return con;
	}
}
