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
<title>Header</title>
</head>
<% String email = session.getAttribute("email").toString(); %>
<center>
	<h2>Online Shopping</h2>
</center>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.jsp">OnlineShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="myCart.jsp">My Cart</a>
      </li>
  
      <li class="nav-item">
        <a class="nav-link " href="myOrders.jsp">My Orders</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="changeDetails.jsp">Change Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="messageUs.jsp">Messege Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="about.jsp">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="logout.jsp">Logout</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="searchHome.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" type="text" placeholder="Search" name="search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<body>
</body>
</html>