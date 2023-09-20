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


//inheritance
@WebServlet("/deletevehicleservlet")
public class deletevehicleservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//get parameeters
		
		String id=request.getParameter("id");
		
		//store return boolean value
		boolean isTrue;
		isTrue=vehicleDBUtil.deleteVehicle(id);
		
		if(isTrue==true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Delete Success..');");
//			out.println("location='vehicle.jsp'");
			out.println("</script>");
			
			//get all vehical details and rederect the jsp file with data
			
			List<vehicle> vhiDetails = vehicleDBUtil.getVehicle();
			request.setAttribute("vhiDetails", vhiDetails);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("vehicle.jsp");
			dispatcher.forward(request, response);
		}else {
			
			//if condition is falls,rederect  the vehicle jsp file
			
			List<vehicle>vhiDetails=vehicleDBUtil.getvehicleDetails(id);
			request.setAttribute("vhiDetails", vhiDetails);
			
			RequestDispatcher dis2=request.getRequestDispatcher("vehicle.jsp");
			dis2.forward(request, response);
		}
		
	}

}
