package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.EmpRegDao;
import com.Model.ModelClasses;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String des = request.getParameter("designation");
		float sal = Float.parseFloat(request.getParameter("salary"));
		String number = request.getParameter("number");
		String ex = request.getParameter("experiance");
		String qul = request.getParameter("qualification");
		String add = request.getParameter("address");
		String gender = request.getParameter("gender");

		
		EmpRegDao erd =new EmpRegDao(name, des, sal, number, ex, qul, add, gender);
		
		ModelClasses er = new ModelClasses();
		int i = er.employeeregistration(erd);
		RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
		if (i != 0) {
			request.setAttribute("msg", "success");
		} else {
			request.setAttribute("msg", "failed");
		}
		rd.forward(request, response);
	}
}
