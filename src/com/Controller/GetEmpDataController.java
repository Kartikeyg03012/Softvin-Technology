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

@WebServlet("/GetEmpDataController")
public class GetEmpDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int s=0;
	int x=0;//x=s
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String str = request.getParameter("value");
		if(str.equals("next")) {
			str=str.valueOf(x+1);
			//System.out.println("Value of str"+str);
		}else if (str.equals("previous")) {
			str=str.valueOf(x-1);
			//System.out.println("Value of str"+str);
		}
		
		s = Integer.parseInt(str);
		x=s;
		int t = 3;
		if (s == 1) {

		}
		else {
			s = s - 1;
			s = s * t + 1;
		}
		
		ModelClasses mc = new ModelClasses();
		ArrayList<EmpRegDao> al = new ArrayList<>();
		al = mc.getempvalues(s, t);
		RequestDispatcher rd = request.getRequestDispatcher("employeeDetails.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
		//System.out.println("Value of x"+x);
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
