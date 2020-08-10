<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.VacancyDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Softvin-Vacancy Registration</title>
<%@include file="adminHeader.jsp"%>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Vacancy Registration Details</h2>
		</div><br>
		<%
			ArrayList<VacancyDetails> list = (ArrayList<VacancyDetails>)request.getAttribute("LIST");
			int i = 1;
		%>
		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Number</th>
					<th scope="col">Resume</th>
				</tr>
			</thead>
			<%
				for(VacancyDetails vd : list) {
			%>
			<tr>
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=vd.getName() %></td>
				<td><%=vd.getEmail() %></td>
				<td><%=vd.getNumber() %></td>
				<td><%=vd.getMessage() %></td>
				


				<%
					i++;
					}
				%>
			</tr>


			</tbody>
		</table><br>
		<center>

<a href=VacancyController?value=previous><button type="button" class="btn btn-outline-info"> << Previous</button></a>&nbsp;&nbsp;&nbsp;
<a href="VacancyController?value=1"><button type="button" class="btn btn-outline-info"> 1</button></a>&nbsp;&nbsp;&nbsp;
<a href="VacancyController?value=2"><button type="button" class="btn btn-outline-info"> 2</button></a>&nbsp;&nbsp;&nbsp;
<a href="VacancyController?value=3"><button type="button" class="btn btn-outline-info"> 3</button></a>&nbsp;&nbsp;&nbsp;
<a href="VacancyController?value=next"><button type="button" class="btn btn-outline-info">NEXT >></button></a>
<br><br><br>
</center>
		
		
		
	</div><br><br>
</body>
</html>