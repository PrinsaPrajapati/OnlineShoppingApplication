<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("notPossible".equals(msg)) {
	%>
	<h3>There is only one Quantity !so click on remove!</h3>
	<%
	}
	%>
	<%
	if ("inc".equals(msg)) {
	%>
	<h3>Quantity Increased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("dec".equals(msg)) {
	%>
	<h3>Quantity Decreased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("removed".equals(msg)) {
	%>
	<h3>Product Successfully Removed!</h3>
	<%
	}
	%>
	<table>
		<thead>
			<%
			int total = 0;
			int sno = 0;
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
				while (rs1.next()) {
					total = rs1.getInt(1);
				}
			%>

			<tr>
				<th scope="col" style="background-color: yellow;">Total:<%out.println(total);%></th>
				<%
				if (total > 0) {
				%><div class="input-group mb-3">
				<th scope="col"><a href="addressPaymentforOrder.jsp"> Proceed to Order</a></th>
				<%
				}
				%>
				</div>
			</tr>
			<div class="input-group mb-3"></div>
		</thead>
			</table>

  <table class="table">
 
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">ProductName</th>
				<th scope="col">Category</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">SubTotal</th>
				<th scope="col">Remove<i class='fas fa-trash-alt'></i></th>
			</tr>
		</thead>
		
			<%
			ResultSet rs = st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
			while (rs.next()) {
			%>
			<tr>
				<%sno = sno + 1;%>
				<td><%out.println(sno);%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><a href="incdecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%=rs.getString(8)%><a href="incdecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i> </a></td>
				<td><%=rs.getString(10)%></td>
				<td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove</a></td>
			</tr>
			<%
			}
			} catch (Exception e) {

			}
			%>

		</tbody>
	</table>

</body>
</html>