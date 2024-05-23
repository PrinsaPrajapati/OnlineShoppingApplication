<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%-- <%@include file="/OnlineShopping/src/main/webapp/footer.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<hr>
	<br>
	<h1 style="color: blue;">Product Added Sucessfully!</h1>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h1 style="color: blue;">Something Went Wrong!try Again!</h1>
	<%
	}
	%>
	<%
	int id = 1;
	try {

		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select max(id) from product");

		while (rs.next()) {

			id = rs.getInt(1);
			id = id + 1;

		}

	} catch (Exception e) {
	}
	%>
	<form action="addNewProductAction.jsp" method="post">
		<h3 style="color: blue;">
			<p class="font-weight-bold">
				Product Id :<%
			out.println(id);
			%>
			</p>
		</h3>

		<input type="hidden" name="id" value="<%out.println(id);%>">

		<div class="form-group">
			<label for="exampleInputEmail1">Enter Product Name :</label> <input
				type="text" name="name" placeholder="Enter Product Name"
				required="required" class="form-control"
				aria-describedby="emailHelp">

		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Category : </label> <input
				type="text" name="category" placeholder="Enter category"
				required="required" class="form-control">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1">Price : </label> <input
				type="number" name="price" placeholder="Enter price"
				required="required" class="form-control">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Active : </label> <select
				name="active">
				<option value="yes">Yes</option>
				<option value="no">No</option>
			</select>
		</div>
		<button type="submit" class="btn btn-primary">Save</button>
	</form>


</body>
</html>