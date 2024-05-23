<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Category</th>
				<th scope="col">Price</th>
				<th scope="col">Add to Cart</th>
			</tr>
		</thead>
		<tbody>
			<%
			int z = 0;
			try {
				String search = request.getParameter("search");

				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select *from product where name like '%" + search + "%' or category like '%"
				+ search + "%' and active='yes'");
				while (rs.next()) {
					z = 1;
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add
						to Cart</a></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</tbody>
	</table>
	<%
	if (z == 0) {
	%>
	<h2 style="color: blue; text-align: center;">Nothing to Show</h2>
	<%
	}
	%>
	<br>
	<br>
</body>
</html>