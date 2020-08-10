<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="images/softvin_logo.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Softvin - Admin</title>
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
</head>

<body>

	<div class="container">
		<br>
		<div class="btn btn-primary">
			<a href="home.jsp" style="text-decoration: none; color: white;">SOFTVIN
				HOME</a>
		</div>
		<br> <br>
		<div class="jumbotron">
			<img src="images/softvin.png" style="width: 40%; height: 40%;">
			<h3>Admin Login</h3>
		</div>
		<form action="AdminController" method="post">
			<%
				String m = (String) request.getAttribute("msg");
				if (m != null)
					out.print("<h2 style=color:red;>" + m + "</h2>");
			%>
			<div class="form-group">

				<label for="exampleInputEmail1">User Name/Id</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					placeholder="Enter User Name" name="uname" required>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					placeholder="Enter Password" name="upwd" required>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>
</body>
</html>