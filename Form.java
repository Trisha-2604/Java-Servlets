package com.WebProject.Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Form
 */
//@WebServlet("/Form")
public class Form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Form() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Reached here");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String[] languages=request.getParameterValues("Languages[]");
		//String language=request.getParameter("language");
		String gender=request.getParameter("gender");
		String country=request.getParameter("country");
		System.out.println(name);
		System.out.println(address);
	//System.out.println(language);
	  for(String lang:languages) {
			System.out.println(lang);
		}
		System.out.println(gender);
		System.out.println(country);
		RequestDispatcher rd=request.getRequestDispatcher("/submit.jsp");
		rd.forward(request, response);
		
	}

}
