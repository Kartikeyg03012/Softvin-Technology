package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.EmpRegDao;
import com.Model.ModelClasses;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String str = request.getParameter("value");
		int s=1;
		int t = 3;
		if (s == 1) {

		} else {
			s = s - 1;
			s = s * t + 1;
		}
		String gender = request.getParameter("empid");
		ModelClasses mc = new ModelClasses();
		
		int i = mc.deletevalues(gender);
		
		ArrayList<EmpRegDao> slist = mc.getempvalues(s,t);
	

		if (i != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("employeeDetails.jsp");
			request.setAttribute("msg", "success");
			request.setAttribute("list", slist);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
