<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Messages</title>
</head>
<body>
	<table  class="table">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Email</th>
				<th scope="col">Subject</th>
				<th scope="col">Body</th>

			</tr>
		</thead>
		<tbody>
			<%
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select *from message");
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
			</tr>
			<%
		     	}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</tbody>
	</table>
</body>
</html>