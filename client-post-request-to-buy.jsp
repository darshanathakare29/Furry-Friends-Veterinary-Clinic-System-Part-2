<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html lang="en">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>Online Veternary Clinic System</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body class="host_version">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="client-side-header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">View Animal Details</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<%
					String message = (String) session.getAttribute("addedMessage");
					if (message != null) {
						session.removeAttribute("addedMessage");
				%>
				<div class='alert alert-success' id="success">Post request
					send to buy animal sucessfully.</div>
				<%
					}
				%>
				<div class="panel panel-info shadow p-3 mb-5">
					<div class="panel-heading">View Animal Details</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Animal Id</th>
										<th>Animal Type</th>
										<th>Animal Name</th>
										<th>Description</th>
										<th>Photo</th>
										<th>Price</th>
										<th>Farmer Name</th>
										<th>Contact Details</th>
										<th>Publish At</th>
										<th>Action</th>
									</tr>
								</thead>
								<%
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblanimal");
								while (resultset.next()) {
								%>
								<tbody>
									<tr class="default">
										<td><%=resultset.getString("animal_id")%></td>
										<td><%=resultset.getString("animal_type")%></td>
										<td><%=resultset.getString("animal_name")%></td>
										<td><%=resultset.getString("description")%></td>
										<td><image
												src="uploads/<%=resultset.getString("image")%>" width="100"
												height="70"></image></td>
										<td><%=resultset.getString("price")%></td>
										<td><%=resultset.getString("farmer_name")%></td>
										<td><%=resultset.getString("contact")%></td>
										<td><%=resultset.getString("created_at")%></td>
										<%
											if (resultset.getInt("status") == 1) {
										%>
										<td><span class="label label-success">Animal Sold</span></td>
										<%
											} else {
										%>
										<td><a href="client-request-to-buy.jsp?animalId=<%=resultset.getString("animal_id")%>"
											class="btn btn-danger">Post Request To Buy</a></td>
										<%
											}
										%>

									</tr>
								</tbody>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
	<script type="text/javascript">
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});
	</script>
</body>
</html>