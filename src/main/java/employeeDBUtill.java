package com.oop;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class employeeDBUtill {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;

	public static boolean validate(String email, String password){
		
	//validate
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		
		
		String sql= "select * from employee where eEmail='"+email+"' and ePassword='"+password+"'";
		rs=stmt.executeQuery(sql);
		
		if(rs.next()) {
			
			isSuccess=true;
		}else {
			isSuccess=false;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	}

}
