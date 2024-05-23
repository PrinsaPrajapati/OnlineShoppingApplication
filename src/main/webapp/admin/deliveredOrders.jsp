<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivered Orders</title>
</head>
<body>

	<table class="table table-striped" id="customers">
		<tr>
			<th>Mobile Number</th>
			<th scope="col">Product Name</th>
			<th scope="col">Quantity</th>
			<th scope="col">SubTotal</th>
			<th>Address</th>
			<th>city</th>
			<th>State</th>
			<th>Country</th>
			<th scope="col">Order Date</th>
			<th scope="col">Expexted Delivery Date</th>
			<th scope="col">Payment Method</th>
			<th scope="col">T-ID</th>
			<th scope="col">Status</th>
		</tr>
		<%
		try {
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
			"select *from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='Delivered'");
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(10)%></td>
			<td><%=rs.getString(17)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			<td><%=rs.getString(8)%></td>
			<td><%=rs.getString(9)%></td>
			<td><%=rs.getString(11)%></td>
			<td><%=rs.getString(12)%></td>
			<td><%=rs.getString(13)%></td>
			<td><%=rs.getString(14)%></td>
			<td><%=rs.getString(15)%></td>
		</tr>
		<%
	   	}
		} catch (Exception e) {
		    System.out.println(e);
		}
		%>
	</table>
</body>
</html>