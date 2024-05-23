<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Product</title>
</head>
<body>
	<h1>Admin Edit Product details here</h1>
	<h2>
		<a href="allProductEditProduct.jsp">Back</a>
	</h2>
	<%
	String id = request.getParameter("id");
	try {

		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from product where id='" + id + "'");
		while (rs.next()) {
	%>
	<form action="editProductAction.jsp" method="post"><hr>
	<input type="hidden" name="id" value="<% out.println(id); %>">
	<h3>Enter Product Name</h3>
	<input type="text" name="name" value="<%=rs.getString(2)%>" required>
	<hr>
	<h3>Enter Category</h3>
	<input type="text" name="category" value="<%=rs.getString(3)%>" required>
		required>
	<hr>
	<h3>Enter Price</h3>
	<input type="number" name="price" value="<%=rs.getString(4)%>" required>

	<hr><h3>Active</h3>
	<select name="active">
			<option value="yes">Yes</option>
			<option value="no">No</option>
		</select>
		<hr>
		<button>Save</button>
</form>
	<%
	}
	} catch (Exception e) {

	System.out.println(e);
	}
	%>
</body>
</html>