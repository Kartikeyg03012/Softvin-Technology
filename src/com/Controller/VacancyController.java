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
import com.DAO.VacancyDetails;
import com.Model.ModelClasses;

@WebServlet("/VacancyController")
public class VacancyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int s=0;
	int x=0;//x=s
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String st = request.getParameter("value");
		if(st.equals("next")) {
			st=st.valueOf(x+1);
			//System.out.println("Value of st"+st);
		}else if (st.equals("previous")) {
			st=st.valueOf(x-1);
			//System.out.println("Value of st"+st);
		}
		
		s = Integer.parseInt(st);
		x=s;
		int t = 3;
		if (s == 1) {

		}
		else {
			s = s - 1;
			s = s * t + 1;
		}
		ModelClasses mc=new ModelClasses();
		ArrayList<VacancyDetails> al=new ArrayList<>();
		al=mc.getVacancyDetails(s,t);
	RequestDispatcher rd=request.getRequestDispatcher("Vacancy.jsp");
	request.setAttribute("LIST", al);
	rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

}
