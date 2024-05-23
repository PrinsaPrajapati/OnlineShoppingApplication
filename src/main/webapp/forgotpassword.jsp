<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
	<center>
	<h2>Enter Details</h2>
		<form action="forgotpasswordAction.jsp" method="post">
			<div class="form-group">
				<tr>
					<td><label> EmailAddress : </label></td>
					<td><input type="email" name="email"
						palceholder="Enter EmailAddress" required></td>
				</tr>
				<br>
			</div>
			<div class="form-group">
				<tr>
					<td><label> MobileNumber : </label></td>
					<td><input type="number" name="mobileNumber"
						palceholder="Enter Mobile number" required></td>
				</tr>
				<br>
			</div>
			<div class="form-group">
				<tr>
					<td><label> Select Sequrity Question : </label></td>
					<td><select name="securityQuestion" required>
							<option value="what is Your First car?">what is Your
								First car?"</option>
							<option value="What is the Name of your pet?">What is
								the Name of your pet?</option>
							<option value="What is your nick Name?">What is your
								nick Name?</option>
							<option value="What is your favorite color?">What is
								your favorite color?</option>
					</select></td>
				</tr>
				<br>
			</div>
			<div class="form-group">
				<tr>
					<td><label> Enter Answer of The Selected Question : </label></td>
					<td><input type="text" name="answer" palceholder="EnterAnswer"
						required></td>
				</tr>
				</br>
			</div>
			<div class="form-group">
				<tr>
					<td><label> Enter New PassWord : </label></td>
					<td><input type="password" name="newpassword"
						palceholder="Enter your new password" required></td>
				</tr>
			</div>
			<div class="text-center">
				<button type="submit" value="register" class="btn btn-primary">Save</button>
			</div>
			<!-- <tr align="center">
			<td colspan="2"><input type="submit" value="Save"></td>
			
		</tr> -->
		</form>
		<h2>
			<a href="login.jsp">BackTo Login Page</a>
		</h2>
	</center>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h1>Password Changed Successfully!</h1>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h1>Something went wrong try agin!</h1>
	<%
	}
	%>
</body>
</html>