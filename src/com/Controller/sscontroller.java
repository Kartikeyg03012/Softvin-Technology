package com.Controller;

import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sscontroller")
public class sscontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Robot robot = new Robot();
			Rectangle rect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());

			BufferedImage screesnShot = robot.createScreenCapture(rect);

			ImageIO.write(screesnShot, "PNG", new File("C:\\Users\\Kartikey\\Desktop\\Java\\screenhot.jpg"));

			PrintWriter out = response.getWriter();
			out.print("success");

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("home.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Robot robot = new Robot();
			Rectangle rect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());

			BufferedImage screesnShot = robot.createScreenCapture(rect);

			ImageIO.write(screesnShot, "PNG", new File("C:\\Users\\Kartikey\\Desktop\\Java\\screenhot.jpg"));

			PrintWriter out = response.getWriter();
			out.print("success");

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("home.jsp");
	}
}
