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

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	ModelClasses model = new ModelClasses();
	ArrayList<EmpRegDao> list = new ArrayList<>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("empup");
		ArrayList<EmpRegDao> emp = model.searchemp(id);
		RequestDispatcher rd = request.getRequestDispatcher("employeeUpdate.jsp");
		request.setAttribute("STD", emp);
		rd.forward(request, response);
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

		EmpRegDao erd = new EmpRegDao(name, des, sal, number, ex, qul, add, gender);
		String str = request.getParameter("value");
		int s=1;
		int t = 3;
		if (s == 1) {

		} else {
			s = s - 1;
			s = s * t + 1;
		}

		
		int i = model.updateValues(erd);
		ArrayList<EmpRegDao> slist = model.getempvalues(s,t);

		if (i != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("employeeDetails.jsp");
			request.setAttribute("msg", "success");
			request.setAttribute("list", slist);
			rd.forward(request, response);
		}

	}

}
