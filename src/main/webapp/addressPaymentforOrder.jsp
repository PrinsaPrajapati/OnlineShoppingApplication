<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<script>
	if (window.history.forward(1) != null)
		window.history.forward(1);
</script>
</head>
<body>
	<br>
	<table class="table table-striped">
		<thead>
			<%
			String email = session.getAttribute("email").toString();
			int total = 0;
			int sno = 0;
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
				while (rs1.next()) {
					total = rs1.getInt(1);
				}
			%>
			<tr>
				<th scope="col"><a href="myCart.jsp">Back</a></th>
				<th scope="col" style="background-color: yellow;">Total:<%
				out.println(total);
				%></th>
			</tr>
		</thead>
	</table>
	<table class="table table-striped">
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
		<tbody>
			<%
			ResultSet rs = st.executeQuery("select *from product inner join cart on product_id=cart.product_id and cart.email='"
					+ email + "' and cart.address is NULL");
			while (rs.next()) {
			%>
			<tr>
				<%
				sno = sno + 1;
				%>
				<td>
					<%
					out.println(sno);
					%>
				</td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(10)%></td>

			</tr>
			<%
			}
			ResultSet rs2 = st.executeQuery("select *from users where email='" + email + "'");
			while (rs2.next()) {
			%>
		</tbody>
	</table>
	<hr style="width: 100%">
	<form action="addressPaymentForOrderAction.jsp" method="post">



		<div class="form-group">
			<tr>
				<label for="address">Enter Address : </label>
				<input type="text" name="address" value="<%=rs2.getString(7)%>"
					placeholder="Enter Address" required="required"
					class="form-control">
		</div>
		<div class="form-group">

			<label for="city">Enter city : </label> <input type="text"
				name="city" value="<%=rs2.getString(8)%>" placeholder="Enter city"
				required="required" class="form-control">
		</div>

		<div class="form-group">

			<label for="state">Enter State : </label> <input type="text"
				name="state" value="<%=rs2.getString(9)%>" placeholder="Enter state"
				required="required" class="form-control">
		</div>

		<div class="form-group">

			<label for="country">Enter Country : </label> <input type="text"
				name="country" value="<%=rs2.getString(10)%>"
				placeholder="Enter country" required="required" class="form-control">
		</div>

		<h5 style="color: red">* If there is no address its means that
			you did not set your address!</h5>
		<h5 style="color: red">*This address will also update to your
			profile</h5>
		<hr style="width: 100%">
		<div class="form-group">
			<label for="payment">Select way of Payment : </label> <select
				class="form-control" " name="paymentMethod">
				<option value="Cash on Delivery(COD)">Cash on Delivery(COD)</option>
				<option value="Online Payment">Online Payment</option>
			</select>
		</div>
		<div class="form-group">
			<label for="pay">Pay online : </label> <input class="form-control"
				type="text" name="transactionID" placeholder="Enter Transaction ID">
			<h5 style="color: red">* If you select online payament the enter
				your transaction Id here otherwise</h5>
		</div>
		<hr style="width: 100%">
		<div class="form-group">
			<label for="mobileNumber">Mobile number : </label> <input
				class="form-control" type="text" name="mobileNumber"
				value="<%=rs2.getString(3)%>" placeholder="Enter Mobile Number"
				required="required">
			<h5 style="color: red">*This Mobile Number will also update to
				your profile</h5>
		</div>
		<divclass="form-group">
		<h5 style="color: red">* If you enter wrong transactionID then
			your oredr will cancele!!</h5>
		<button class="button" type="submit">Precced to Generate Bill
			& Save</button>
		<h5 style="color: red">*Fill form Correctly !</h5>
		</div>
	</form>
	<%
	}
	} catch (Exception e) {
	System.out.println(e);
	}
	%>
</body>
</html>