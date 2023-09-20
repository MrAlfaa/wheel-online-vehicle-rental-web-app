package com.oop;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/button")
public class button extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//vehicleDBUtil.getVehicle();
		
		try {
			
			List<vehicle> vhiDetails = vehicleDBUtil.getVehicle();
			request.setAttribute("vhiDetails", vhiDetails);	
			
			RequestDispatcher dis=request.getRequestDispatcher("vehicle.jsp");
			dis.forward(request, response);
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}

}
