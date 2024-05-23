<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message Us</title>
</head>
<body>
	<center>
		<h2>Message Us</h2>
	</center>


	<%
	String msg = request.getParameter("msg");

	if ("valid".equals(msg)) {
	%>
	<h3>Message Successfully sent.Our team will Contact you Soon!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	}
	<h3>Something went wrong ! Try again!</h3>
	<%
	}
	%>
	<form action="mesageUsAction.jsp" method="post">
		<div class="form-group">

			<label for="exampleFormControlTextarea1">Subject</label> <input
				type="text" class="form-control" placeholder="Enter Your subject">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Your Message</label>

			<textarea class="form-control" name="body"
				placeholder="Enter Your Message" required="required" rows="8"></textarea>
		</div>
		<button type="submit" class="btn btn-primary">Send</button>
	</form>


</body>
</html>