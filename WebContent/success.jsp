<%@page import="java.io.File"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.Rectangle"%>
<%@page import="java.awt.Robot"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Softvin-Success</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<%
				String msg = (String) request.getAttribute("msg");
				if (msg != null) {
					if (msg == "success") {
						out.print("<h2 style=color:green> Successfully Registered</h2>");
						out.print("<h4>Thank You For Registration We will Inform you Shortly!! </h4>");
					} else {
						out.print("<h2 style=color:red> Register Failed </h2>");
					}
				}
			%><hr>
			<div class="btn btn-primary">
				<a href="sscontroller" style="text-decoration: none; color: white;">Take
					ScreenShot</a>
			</div>
			<div class="btn btn-primary">
				<a href="home.jsp" style="text-decoration: none; color: white;">SOFTVIN
					HOME</a>
			</div>
			<script type="text/javascript">
				function ss(){
					try {
					Robot robot = new Robot();
					Rectangle rect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());

					BufferedImage screesnShot = robot.createScreenCapture(rect);

					ImageIO.write(screesnShot, "PNG", 
							new File("C:\\Users\\Kartikey\\Desktop\\Java\\shot.jpg"));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
				</script>



		</div>
	</div>
</body>
</html>
