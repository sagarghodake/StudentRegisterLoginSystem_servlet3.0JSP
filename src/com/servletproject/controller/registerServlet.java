package com.servletproject.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.servletproject.pojo.*;

import com.servletproject.impl.UserDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession session=request.getSession();
		session.invalidate();
		PrintWriter pw=response.getWriter();

		RequestDispatcher dis=request.getRequestDispatcher("menu");
		RequestDispatcher dis1=request.getRequestDispatcher("Login.html");

		dis.include(request, response);
		pw.println("<center><p style='color:green'>User Logged out sucessfully</p></center>" );
		dis1.include(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		
		String username=request.getParameter("name");
		String email=request.getParameter("email");
		String date=request.getParameter("date");
		String password=request.getParameter("password");
		
		User user=new User();
		user.setName(username);
		user.setUsername(email);
		user.setDate(date);
		user.setPassword(password);
		
		
		
		UserDaoImpl userDaoImpl=new UserDaoImpl();
	
		if(userDaoImpl.register(user)){
			request.setAttribute("registerSucessMessage","Registered Sucesfully...!" );
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
			
		HttpSession session=request.getSession();
		session.setAttribute("username", username);	
		
		} else {
			request.setAttribute("registerFailedMessage","Registered Failed...! Please Try Again...!!!" );
			request.getRequestDispatcher("register.jsp").forward(request, response);
			
		}
	}	

}
