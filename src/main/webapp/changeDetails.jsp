<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Deatils</title>
</head>
<body>
	<%
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from users where email='"+email+"'");
		while (rs.next()) {
	%>
	<p><mark>This Details already been entered.You are unable to modify the Email.</mark></p>
<hr>
	<h3>
		Name: <%=rs.getString(1)%></h3>
	<hr>
	<h3>
		Email: <%=rs.getString(2)%></h3>
	<hr>
	<h3>
		Mobile Number: <%=rs.getString(3)%></h3>
	<hr>
	<h3>
		Security Question: <%=rs.getString(4)%></h3>
	<hr>
	<br>
	<br>
	<br>
	<%
	}
	} catch (Exception e) {
	System.out.println(e);
	}
	%>
</body>
</html>