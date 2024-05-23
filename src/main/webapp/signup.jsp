<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>

	<h1>Welcome To The Online Shooping Page</h1>
	<form action="SignupAction.jsp" method ="post">
		<table>
			<tbody>
				<tr>
					<td><label> User Name : </label></td>
					<td><input type="text" name="name" placeholder="EnterName"
						required></td>
				</tr>
				<tr>
					<td><label> EmailAddress : </label></td>
					<td><input type="email" name="email" placeholder="EnterEmailAddress" required></td>
				</tr>
				<tr>
					<td><label> Phone Number : </label></td>
					<td><input type="number" name="mobilenumber" placeholder="EnterMobileNumber" required></td>
				</tr>
				<tr>
					<td><label> Select Sequrity Question : </label></td>
					<td><select name="securityquestion" required>
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
				<tr>
					<td><label> Enter Answer of The Selected Question : </label></td>
					<td><input type="text" name="answer" placeholder="EnterAnswer"
						required></td>
				</tr>
				</br>
				<tr>
					<td><label> PassWord : </label></td>
					<td><input type="password" name="password" placeholder="password" required></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="register">
					</td>
					<td><input type="reset" value="cancel"></td>
				</tr>
			</tbody>
		</table>

	</form>
	<h2>
		<a href="login.jsp">Login</a>
	</h2>
	<%
	String msg = request.getParameter("msg");

	if ("valid".equals(msg)) {
	%>
	<h1>Succesfully Registerd !</h1>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h1>something went Wrong !! try agin!!!</h1>
	<%
	}
	%>
</body>
</html>