package com.oop;

import java.io.IOException;
import java.io.PrintWriter;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminloginServlet")
public class adminloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//get parameeter and assign the new string variable
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isTrue;
		//call the validate function and assign return boolean value isTrue boolean variable
		
		isTrue=employeeDBUtill.validate(email, password);
		
		if(isTrue==true) {
			//print alert box message and rederect the admindashboard.jsp
			out.println("<script type='text/javascript'>");
			out.println("alert('Welcome !');");
			out.println("location='admindashboard.jsp'");
			out.println("</script>");
			
		}else {
			
			//print alert box message
			out.println("<script type='text/javascript'>");
			out.println("alert('Your email or password is incorrect');");
			out.println("location='adminlogin.jsp'");
			out.println("</script>");
			
		}
	}

}
