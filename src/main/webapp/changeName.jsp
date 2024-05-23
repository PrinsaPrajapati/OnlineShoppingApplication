<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Name</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%><h3 style="color: blue;">Your Mobile Number Successfully
		changed!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 style="color: blue;">Your Password is Wrong!</h3>
	<%
	}
	%>
	<form action="changeNameAction.jsp" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Enter your Name :</label> <input
				type="text" name="newName" placeholder="Enter your name"
				required="required" class="form-control"
				aria-describedby="emailHelp">

		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Password : (For
				Security)</label> <input type="password" class="form-control"
				id="exampleInputPassword1" name="password"
				placeholder="Enter Password" required="required">
		</div>
		<div class="form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		<button type="submit" class="btn btn-primary">Save</button>
	</form>


</body>
</html>