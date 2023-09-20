package com.oop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.customer.Customer;
//import com.customer.CustomerDBUtil;


@WebServlet("/addvehicleservlet")
public class addvehicleservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
	response.setContentType("text/html");
		
		//geting the parameeter from the jsp class and assign the string variable
		String brand=request.getParameter("brand");
		String model=request.getParameter("model");
		String registrationNo=request.getParameter("registrationNo");
		String location=request.getParameter("location");
		String colour=request.getParameter("colour");
		String fuelType=request.getParameter("fuelType");
		String seat=request.getParameter("seat");
		String description=request.getParameter("description");
		
		
		//catch and store boolean value
		boolean isTrue;
		isTrue=vehicleDBUtil.addvehicle(brand, model, registrationNo, location, colour, fuelType, seat, description);
		
		
		if(isTrue==true) {
			
			List<vehicle> vhiDetails = vehicleDBUtil.getVehicle();
			request.setAttribute("vhiDetails", vhiDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("vehicle.jsp");
			dis.forward(request, response);
		}else {
			
			//alert box message and rederect to the jsp file
			out.println("<script type='text/javascript'>");
			out.println("alert('Pleace Re enter vehicle details..');");
			out.println("location='addvehicle.jsp'");
			out.println("</script>");
		}
	}

}
