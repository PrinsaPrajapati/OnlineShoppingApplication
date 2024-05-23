<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Orders</title>
</head>
<body>
		
<table class="table">
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Sub Total</th>
				<th scope="col">Order Date</th>
				<th scope="col">Expected Delivery Date</th>
				<th scope="col">Payment Method</th>
				<th scope="col">Status</th>

			</tr>
		</thead>
		<tbody>
<%
int sno=0;
try{
	Connection con= ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next()){
		sno=sno+1;
	
%>
		
		<tr>
		<td><%out.println(sno); %></td>
		<td><%=rs.getString(17) %></td>
		<td><%=rs.getString(18)%></td>
		<td><%=rs.getString(19)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(11)%></td>
		<td><%=rs.getString(12)%></td>
		<td><%=rs.getString(13)%></td>
		<td><%=rs.getString(15)%></td>
		
		</tr>
		<%
		}
	}
	catch(Exception e){
	System.out.println(e);
	}%>
		</tbody>
	</table>
</body>
</html>