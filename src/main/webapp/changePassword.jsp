<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("notMatch".equals(msg)) {
	%><h3 style="color: blue;">New Password and Confirm Password does
		not match!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%><h3 style="color: blue;">Your old Password is Wrong!</h3>
	<%
	}
	%>
	<%
	if ("done".equals(msg)) {
	%><h3 style="color: blue;">Password change successfully!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%><h3 style="color: blue;">Something went wrong! Try again!</h3>
	<%
	}
	%>

	<form action="changePasswordAction.jsp" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Enter Old Password :</label> <input
				type="password" name="oldPassword" placeholder="Enter Old Password"
				required="required" class="form-control"
				aria-describedby="emailHelp">

		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter New Password : </label> <input
				type="password" name="newPassword" placeholder="Enter New Password"
				required="required" class="form-control">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Confirm PassWord : </label>
			<input type="password" name="confirmPassword"
				placeholder="Enter Confirm PassWord" required="required"
				class="form-control">
		</div>
		<button type="submit" class="btn btn-primary">Save</button>
	</form>

</body>
</html>