package com.servletproject.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.servletproject.impl.UserDaoImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("passsword");
		UserDaoImpl userDao=new UserDaoImpl();
		
		boolean isLogin=userDao.login(username, password);
		if(isLogin){
			HttpSession session=request.getSession();
			session.setAttribute("un", username);
			request.setAttribute("loginSucessMessage", "Login Sucessful...!!!");
			 request.getRequestDispatcher("Home.jsp").forward(request, response);
			
		}else{
			request.setAttribute("loginFailedMessage", "Login Failed...!!! Try again...!!!");
			 request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
	}

}
