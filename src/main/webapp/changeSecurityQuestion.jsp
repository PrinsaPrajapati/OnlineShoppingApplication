<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Security Question</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%><h3 style="color: blue;">Your Security Question Successfully
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
	<form action="changeSecurityQuestionAction.jsp" method="post">


		<div class="form-group">
			<label for="exampleInputEmail1">Selct your New Security
				Question :</label> <!-- <input type="text" required="required">  -->
				<select name="securityquestion" required>
				<option value="what is Your First car?">what is Your
					Firstcar?"</option>
				<option value="What is the Name of your pet?">What is the
					Name of your pet?</option>
				<option value="What is your nick Name?">What is your nick
					Name?</option>
				<option value="What is your favorite color?">What is your
					favorite color?</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter your New Answer : </label> <input
				type="text" name="newAnswer" placeholder="Enter New Answer"
				class="form-control" required="required">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Password :(For
				Security) </label> <input type="password" name="password"
				placeholder="Enter Password" class="form-control"
				required="required">
		</div>
		<button type="submit" class="btn btn-primary">Save</button>
		
 
	</form>
</body>
</html>