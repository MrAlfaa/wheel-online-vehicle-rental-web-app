package com.oop;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.customer.Customer;
//import com.customer.CustomerDBUtil;


@WebServlet("/updatevehicleServlet")
public class updatevehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//geting parameeter
		
		String id=request.getParameter("id");
		String brand=request.getParameter("brand");
		String model=request.getParameter("model");
		String registrationNo=request.getParameter("registrationNo");
		String location=request.getParameter("location");
		String colour=request.getParameter("colour");
		String fuelType=request.getParameter("fuelType");
		String seat=request.getParameter("seat");
		String description=request.getParameter("description");
		
		//get return boolean value
		boolean isTrue;
		
		isTrue=vehicleDBUtil.updatevehicle(id, brand, model, registrationNo, location, colour, fuelType, seat, description);
		
		if(isTrue==true) {
			
			List<vehicle>vhiDetails=vehicleDBUtil.getvehicleDetails(id);
			request.setAttribute("vhiDetails", vhiDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("vehicle.jsp");
			dis.forward(request,response);
		}else {
			
			List<vehicle>vhiDetails=vehicleDBUtil.getvehicleDetails(id);
			request.setAttribute("vhiDetails", vhiDetails);
			
			RequestDispatcher dis2=request.getRequestDispatcher("vehicle.jsp");
			dis2.forward(request, response);
		}
	}

}
