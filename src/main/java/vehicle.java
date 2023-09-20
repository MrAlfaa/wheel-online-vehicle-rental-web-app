package com.oop;

public class vehicle {
	
	private int id;
	private String brand;
	private String model;
	private String registrationNo;
	private String location;
	private String colour;
	private String fuelType;
	private int seat;
	private String description;
	
	
	public vehicle(int id, String brand, String model, String registrationNo, String location, String colour,
			String fuelType, int seat, String description) 
	{
		//super();
		this.id = id;
		this.brand = brand;
		this.model = model;
		this.registrationNo = registrationNo;
		this.location = location;
		this.colour = colour;
		this.fuelType = fuelType;
		this.seat = seat;
		this.description = description;
	
	}


	public int getId() {
		return id;
	}

	public String getBrand() {
		return brand;
	}
	public String getModel() {
		return model;
	}
	public String getRegistrationNo() {
		return registrationNo;
	}
	public String getLocation() {
		return location;
	}
	public String getColour() {
		return colour;
	}
	public String getFuelType() {
		return fuelType;
	}
	public int getSeat() {
		return seat;
	}
	public String getDescription() {
		return description;
	}
	
}
