package com.oop;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import com.customer.DBConnect;

//import com.customer.Customer;
//import com.customer.DBConnect;



public class vehicleDBUtil {

	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	
	public static boolean addvehicle(String brand,String model,String registrationNo,String location,String colour,String fuelType,String seat,String description ) {
		
		int convertedSeat=Integer.parseInt(seat);//string variable convert the int value
		//wrapper class699
		
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="insert into vehicle values(0,'"+brand+"','"+model+"','"+registrationNo+"','"+location+"','"+colour+"','"+fuelType+"','"+convertedSeat+"','"+description+"')";
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
	
public static List<vehicle> getVehicle(){
		
		ArrayList<vehicle>vehicle=new ArrayList<>();//create array class object
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from vehicle order by id desc";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {//get data from the database 
				int id=rs.getInt(1);
				String brand=rs.getString(2);
				String model=rs.getString(3);
				String registrationNo=rs.getString(4);
				String location=rs.getString(5);
				String colour=rs.getString(6);
				String fuelType=rs.getString(7);
				int seat=rs.getInt(8);
				String description=rs.getString(9);
				
				
				vehicle vehi=new vehicle(id,brand,model,registrationNo,location,colour,fuelType,seat,description);
				vehicle.add(vehi);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vehicle;
	} 

public static boolean updatevehicle(String id,String brand,String model,String registrationNo,String location,String colour,String fuelType,String seat,String description) {
	
	try {
		
		con=DBConnect.getConnection();
		stmt =con.createStatement();
		String sql="update vehicle set brand='"+brand+"',model='"+model+"',registrationNo='"+registrationNo+"',location='"+location+"',colour='"+colour+"',fuelType='"+fuelType+"',seat='"+seat+"',description='"+description+"'"
				+"where id='"+id+"'";
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

	
public static List<vehicle>getvehicleDetails(String id){//create list object using arrayclass
	
	
	ArrayList<vehicle> vhi=new ArrayList<>();
	
	int convertedID=Integer.parseInt(id);
	
	try {
		
		con =DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="select * from vehicle where id='"+convertedID+"' ";
		rs=stmt.executeQuery(sql);
		//retrive data from the data base
		while(rs.next()) {
			int Id=rs.getInt(1);
			String brand=rs.getString(2);
			String model=rs.getString(3);
			String registrationNo=rs.getString(4);
			String location=rs.getString(5);
			String colour=rs.getString(6);
			String fuelType=rs.getString(7);
			int seat=rs.getInt(8);
			String description=rs.getString(9);
			
			
			vehicle v =new vehicle(Id,brand,model,registrationNo,location,colour,fuelType,seat,description);
			vhi.add(v);
			
		}
		
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return vhi;
	}

public static boolean deleteVehicle(String id) {
	
	int convertID=Integer.parseInt(id);
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="delete from vehicle where id='"+convertID+"'";
		int rs=stmt.executeUpdate(sql);
		
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
	


