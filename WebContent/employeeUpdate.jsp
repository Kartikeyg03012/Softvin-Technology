<%@page import="com.DAO.EmpRegDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Softvin- Employee Update</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Employee Update Data</h2>
			<hr>
		</div>
		<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				out.println("<h2 style=color:blue>" + msg + "</h2>");
			}
			//response.sendRedirect("StudentDetailsServlet");

			ArrayList<EmpRegDao> stdlist = (ArrayList<EmpRegDao>) request.getAttribute("STD");
		%>
		
		<%
			for (EmpRegDao ee : stdlist) {
		%>
		<form action="UpdateController" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter your Full Name" value="<%=ee.getEname()%>"
						name="name" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Designation</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter your Designation" name="designation"
						value="<%=ee.getEdesig()%>" required>
				</div>

			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Salary</label>
				<div class="col-sm-10">
					<input type="number" class="form-control"
						placeholder="Enter your Salary" name="salary"
						value="<%=ee.getEsalary()%>" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Softvin-id</label>
				<div class="col-sm-10">
					<input type="text" class="form-control"
						placeholder="Enter Softvin-id" name="gender"
						value="<%=ee.getEgender()%>" Readonly="readonly">
				</div>

			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Contact Number</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control" pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"
						placeholder="Enter your number" name="number"
						value="<%=ee.getEmno()%>" required>
				</div>
			</div>
			<div class="form-group">
				<label> Work Expeience </label> <select class="form-control"
					name="experiance" required>
					<option value="<%=ee.getEex()%>"><%=ee.getEex()%></option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
					<option value="3+">More Than Three years</option>
				</select>
			</div>
			<div class="form-group">
				<label>Your qualification</label> <select class="form-control"
					name="qualification"  required>
					<option value="<%=ee.getEqul()%>"><%=ee.getEqul()%></option>
					<option value="12th">12th</option>
					<option value="UG">Graduate</option>
					<option value="PG">Post Graduate</option>
					<option value="Ph.d">Ph.d</option>
					<option value="Other">Other</option>
				</select>
			</div>
			<div class="form-group">
				<label>Address</label>
				<input type="text" class="form-control" name="address" 
					value="<%=ee.getEadd() %>" required>
			</div>





			<div class="form-group row">
				<div class="col-sm-10">
					<a href="UpdateController?empup=<%=ee.getEgender()%>"><button
							type="submit" class="btn btn-primary">UPDATE</button></a>
					&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">clear</button>
				</div>
			</div>
		</form>
		<%
			}
		%>

	</div>

</body>
</html>