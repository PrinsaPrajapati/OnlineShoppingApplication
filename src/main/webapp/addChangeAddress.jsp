<%@page import="java.util.concurrent.ExecutionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add or Change Address</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%><h3 style="color: blue;">Address Successfully Updated !</h3>
	<%
	}
	%>

	<%
	if ("invalid".equals(msg)) {
	%><h3 style="color: blue;">Something went wrong! Try again!</h3>
	<%
	}
	%>
	<%
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from users where email='" + email + "'");
		while (rs.next()) {
	%>
	<form action="addChangeAddressAction.jsp" method="post">

		<div class="form-group">
			<label for="exampleInputEmail1">Enter Address :</label> <input 
				type="text" name="address" value="<%=rs.getString(7)%>"
				placeholder="Enter Address" required="required" class="form-control"
				aria-describedby="emailHelp">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter City : </label> <input
				type="text" name="city" value="<%=rs.getString(8)%>"
				placeholder="Enter City" class="form-control" required="required">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter State : </label> <input
				type="text" name="state" value="<%=rs.getString(9)%>"
				placeholder="Enter State" class="form-control" required="required">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Country : </label> <input
				type="text" name="country" value="<%=rs.getString(10)%>"
				placeholder="Enter Country"  class="form-control" required="required">
		</div>

		<button type="submit" class="btn btn-primary">Save</button>
	</form>

	
	<%
	}
	} catch (Exception e) {
	System.out.println(e);
	}
	%>
</body>
</html>