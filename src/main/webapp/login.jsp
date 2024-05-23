<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
	<div class="text-center">
		<p class="font-weight-bolder">
			<a class="text-primary"> Online Shopping Application</a>
		</p>
	</div>
	<div class="text-center">


		<!-- 
<form action="loginAction.jsp" method="post">
  Email input
  <div  data-mdb-input-init class="form-outline mb-4">
    <input type="email"  name="email" id="form2Example1" class="form-control" />
    <label class="form-label" for="form2Example1">Email address :</label>
  </div>

  Password input
  <div data-mdb-input-init class="form-outline mb-4">
    <input type="password" name="password" id="form2Example2" class="form-control" />
    <label class="form-label" for="form2Example2">Password :</label>
  </div>

  2 column grid layout for inline styling
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      Checkbox
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
        <label class="form-check-label" for="form2Example31"> Remember me </label>
      </div>
    </div>

    <div class="col">
      Simple link
      <a href="forgotpassword.jsp">Forgot password?</a>
    </div>
  </div>

  Submit button
  <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-block mb-4">Sign in</button>

  Register buttons
  <div class="text-center">
    <p>Not a member? <a href="signup.jsp">SignUP</a></p>
    <p>or sign up with:</p>
    <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-link btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
  </div>
</form>

	==================== -->
		<form action="loginAction.jsp" method="post">
			<!-- http://localhost:8080/OnlineShopping/login.jsp

			http://localhost:8080/OnlineShopping/signup.jsp -->

			<div class="form-group">
				<tr>
					<label for="email">Email Address : </label>
					<input type="email" name="email" placeholder="EnterEmailAddress"
						class="form-control" required>
					<small class="form-text text-muted">We'll never share your
						email with anyone else.</small>
			</div>
			<div class="form-group">

				<label for="password">Password : </label> <input type="password"
					name="password" placeholder="Enter password" class="form-control">
			</div>
			<!-- <div class="form-group form-check">
				<input type="checkbox" class="form-check-input" name="password"
					placeholder="Enter password" required> <label
					class="form-check-label" for="password">Check me out</label>

			</div> -->
			<div class="text-center">
				<button type="submit" value="register" class="btn btn-primary">Login</button>
			</div>
			<button type="button" data-mdb-button-init data-mdb-ripple-init
				class="btn btn-link btn-floating mx-1">
				<i class="fab fa-facebook-f"></i>
			</button>

			<button type="button" data-mdb-button-init data-mdb-ripple-init
				class="btn btn-link btn-floating mx-1">
				<i class="fab fa-google"></i>
			</button>

			<button type="button" data-mdb-button-init data-mdb-ripple-init
				class="btn btn-link btn-floating mx-1">
				<i class="fab fa-twitter"></i>
			</button>

			<button type="button" data-mdb-button-init data-mdb-ripple-init
				class="btn btn-link btn-floating mx-1">
				<i class="fab fa-github"></i>
			</button>
		</form>

		<h2>
			<a href="signup.jsp" class="btn btn-primary btn-lg active"
				role="button" aria-pressed="true">SignUp</a> <a
				href="forgotpassword.jsp" class="btn btn-secondary btn-lg active"
				role="button" aria-pressed="true">Forgot Password?</a>

		</h2>

		<%
		String msg = request.getParameter("msg");
		if ("notexist".equals(msg)) {
		%>
		<h2>Incorrect UserName And Password</h2>
		<%
		}
		%>
		<%
		if ("invalid".equals(msg)) {
		%>
		<h2>Something went wrong! Try again!</h2>
		<%
		}
		%>

		</form>
	</div>
</body>
</html>
