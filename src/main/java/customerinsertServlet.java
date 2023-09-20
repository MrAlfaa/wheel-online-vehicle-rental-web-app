package com.oop;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/customerinsertServlet")
public class customerinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get parameeter
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		boolean isTrue;
		
		isTrue=CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
		if(isTrue==true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Register Success');");
			out.println("location='index.jsp'");
			out.println("</script>");
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Please Try Again');");
			out.println("location='register.jsp'");
			out.println("</script>");
		}
		
	}

}
