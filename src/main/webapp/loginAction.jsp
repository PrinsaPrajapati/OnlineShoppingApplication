<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
} else {
	int z = 0;

	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from users where email='"+email+"' and password='"+password+"'");
		while (rs.next()) {
	     z = 1;
	     session.setAttribute("email", email);
	     response.sendRedirect("Home.jsp");
		}
		if (z == 0) {
	       response.sendRedirect("login.jsp?msg=notexist");
		}
	} catch (Exception e) {
		
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");

	}
}
%>

