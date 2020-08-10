package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.ModelClasses;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uid = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		HttpSession session =request.getSession();
		session.setMaxInactiveInterval(10000);
		session.setAttribute("expired", uid);
		

		
		ModelClasses am = new ModelClasses();
		int i = am.logincheckvalues(uid, pwd);
		if (i != 0) {
			response.sendRedirect("adminHome.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
			request.setAttribute("msg", "Incorrect User Id Or Password");
			rd.forward(request, response);
			// response.sendRedirect("admin.jsp");
		}
	}

}
