<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Oredr Received</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("cancel".equals(msg)) {
	%>
	<h3 style="color: blue;">Order cancel Sucessfully!</h3>
	<%
	}
	%>
	<%
	if ("delivered".equals(msg)) {
	%>
	<h3 style="color: blue;">Sucessfully Updated!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 style="color: blue;">Something went Wrong ! Try Again !y!</h3>
	<%
	}
	%>
	<table class="table" id="customers">
		<tr>
			<th>Mobile Number</th>
			<th scope="col">Product Name</th>
			<th scope="col">Quantity</th>
			<th scope="col">Sub Total</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Country</th>
			<th scope="col">Order Date</th>
			<th scope="col">Expected Delivery Date</th>
			<th scope="col">Payment Method</th>
			<th scope="col">T-ID</th>
			<th scope="col">Status</th>
			<th scope="col">Cancel Orders</th>
			<th scope="col">Orders Delivered</th>
				
		</tr>
		<% 
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
			while (rs.next()) {
			
			%>
		<tr>
		
		<td><%=rs.getString(10) %></td>
		<td><%=rs.getString(17) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td><%=rs.getString(9) %></td>
		<td><%=rs.getString(11) %></td>
		<td><%=rs.getString(12) %></td>
		<td><%=rs.getString(13) %></td>
		<td><%=rs.getString(14) %></td>
		<td><%=rs.getString(15) %></td>
		<td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel</a></td>
		<td><a href="deliveredOrderAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered</a></td>
		</tr>
		<%
		
		}
		} catch(Exception e){
		}%>
	</table>

</body>
</html>