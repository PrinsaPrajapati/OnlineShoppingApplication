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
<title>Change Detail Header</title>
</head>
<body>
	<br>
	<center>
		<h2>Change Details</h2>
		<h3>
			<a href="Home.jsp" class="previous">&laquo; Back </a>
		</h3>
	</center>
	<style>
.next {
	background-color: #04AA6D;
	color: white;
}

a {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
}

.round {
	border-radius: 50%;
}
</style>

	<hr>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="changeDetails.jsp">Change Details</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="changePassword.jsp">Change Password </a></li>
				<li class="nav-item"><a class="nav-link" href="changeName.jsp">Change
						Name</a></li>
				<li class="nav-item"><a class="nav-link"
					href="addChangeAddress.jsp">Add or Change Address</a></li>
				<li class="nav-item"><a class="nav-link"
					href="changeSecurityQuestion.jsp">Change Sequrity Question</a></li>
				<li class="nav-item"><a class="nav-link"
					href="changeMobileNumber.jsp">Change Mobile number</a></li>

			</ul>

		</div>
	</nav>
	<hr>
	<%
	String email = session.getAttribute("email").toString();
	%>

	<h3>
		<p>
			<u> <%
 out.println(email);
 %>
			</u>
		</p>
	</h3>

	<br>
</body>
</html>