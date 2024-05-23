<%-- <%@page import="com.mysql.cj.xdevapi.Statement"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>

	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h2 style ="color:blue;">Product Added Sucessfully!
	</h2>
	<%
	}
	%> <%
	if ("wrong".equals(msg)) {
	%> <h2 style ="color:blue;">Something Went Wrong!try Again!
	</h2>
	<%
	}
	%>
	<table class="table">
		<tbody>
		<thead>
			<tr>
			
				<th scope="col">Product ID</th>
			
				
				<th scope="col">Product Name</th>
				
				<th scope="col">Catogory</th>
			
				<th scope="col">Price</th>
			
				<th scope="col">Status</th>
				
			</tr>

		</thead>
		</tbody>
		<%
		try{
			
		Connection con= ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs= st.executeQuery("select *from product");
		while(rs.next()){
			%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><a href="editProduct.jsp?id=<%=rs.getString(1) %>">Edit</a></td>
		</tr>
		<%
		}
			
	}
	catch(Exception e){
		System.out.println(e);
	}%>
	</table>
</body>
</html>