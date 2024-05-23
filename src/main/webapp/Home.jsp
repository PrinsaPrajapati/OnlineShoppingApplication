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
	<%
	String msg = request.getParameter("msg");
	if ("added".equals(msg)) {
	%>
	<h3 style="color: blue;">Product added Successfully!</h3>
	<%
	}
	%>
	<%
	if ("exist".equals(msg)) {
	%>
	<h3 style="color: blue;">Product already exist in your cart!
		Quantity increased!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 style="color: blue;">Something went Wrong ! Try Again!</h3>
	<%
	}
	%>
	
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
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select *from product where active='yes'");
				while (rs.next()) {
			%>
		
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to Cart</a></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</tbody>
	</table>
	<br>
	<br>
</body>
</html>