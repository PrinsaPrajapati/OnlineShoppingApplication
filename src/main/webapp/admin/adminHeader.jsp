<%@page errorPage="error.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Header</title>
</head>
<body>
<% String email = session.getAttribute("email").toString(); %>

<center>Online Shopping WELCOME Admin Page</center>

<!-- <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Admin</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
  <ul class="nav nav-pills nav-fill">
      <li class="nav-item active">
        <a class="nav-link" href="addNewProduct.jsp">Add new Product <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="allProductEditProduct.jsp">All Product & Edit Products</a>
      </li>
    <!--   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li> -->
      <li class="nav-item">
        <a class="nav-link " href="messagesRecieved.jsp">Messages Received</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="orderRecieved.jsp">Order Recieved</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="cancelOrders.jsp">Cancel Orders</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="deliveredOrders.jsp">Deliver Orders</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="../logout.jsp">Logout</a>
      </li>
    </ul>
</div>
</nav>
</body>
</html>