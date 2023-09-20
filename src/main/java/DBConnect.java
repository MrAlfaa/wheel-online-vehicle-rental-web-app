package com.oop;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url="jdbc:mysql://localhost:3306/rental";
	private static String user="root";
	private static String DBpass="admin";
	private static Connection con;
	
	
public static Connection getConnection() {
		
		
		try {//create data base connection
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,DBpass);
			
			
		}catch(Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
		
	}

}
