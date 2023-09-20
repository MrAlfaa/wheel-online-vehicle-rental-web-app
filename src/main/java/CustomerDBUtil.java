package com.oop;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.List;



public class CustomerDBUtil {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;

	public static boolean validate(String email, String password){
		
	//validate
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		
		
		String sql= "select * from customer where email='"+email+"' and password='"+password+"'";
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
	
	
	
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		
		boolean isSuccess=false;
		
		
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs =stmt.executeUpdate(sql);
			
			if(rs>0) {
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
