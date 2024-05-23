<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

String email= session.getAttribute("email").toString();
String newName = request.getParameter("newName");
String password = request.getParameter("password");

int check=0;
	
	try{
		
		Connection con= ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from users where email='"+email+"' and password='"+password+"'");
	   while(rs.next()){
		   check=1;
		   st.executeUpdate("update users set name='"+newName+"' where email='"+email+"'");
	       response.sendRedirect("changeName.jsp?msg=done");
	   }
	   if(check==0){
		   
		   response.sendRedirect("changeName.jsp?msg=wrong");
	   }
	
	}catch(Exception e)
	{
		System.out.println(e);
	}

%> 