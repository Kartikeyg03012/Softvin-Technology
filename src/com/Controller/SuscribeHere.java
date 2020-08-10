package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.VacancyDetails;
import com.Model.ModelClasses;

@WebServlet("/SuscribeHere")
public class SuscribeHere extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String number=request.getParameter("number");
		String resume=request.getParameter("resume");
		
		
		ModelClasses sm= new ModelClasses();
		VacancyDetails vd=new VacancyDetails(name, email, number, resume);
		int i=sm.suscribegetvalues(vd);
		RequestDispatcher rd = null;
		if (i !=0) {
			rd= request.getRequestDispatcher("success.jsp");
			request.setAttribute("msg", "success");
			rd.forward(request, response);
		} else {
			rd= request.getRequestDispatcher("home.jsp");
			request.setAttribute("msg", "failed");
			rd.forward(request, response);
		}
		
	}
		

}

