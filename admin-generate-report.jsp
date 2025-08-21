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
	<jsp:include page="admin-header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">All Reports</h4>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-6">
				<img src="images/reports-logo.jpeg" style="width:700px;">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6">
				<table id="table" class="table table-bordered shadow p-3 mb-5">
					<tbody>
						<form action="AnimalPurchaseReport">
							<tr>
								<th>All Animals Purchase Report</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-primary"></td>
							</tr>
						</form>
						<form action="AllDoctorConsultationReport">
							<tr>
								<th>All Doctors Consultation To Farmer Report</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-danger"></td>
							</tr>
						</form>
						<form action="AllDoctorsReport">
							<tr>
								<th>All Doctors Report</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-info"></td>
							</tr>
						</form>
						<form action="AllClientsReport">
							<tr>
								<th>All Clients Report</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-secondary"></td>
							</tr>
						</form>
						<form action="AllFarmerReport">
							<tr>
								<th>All Farmer Reports</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-warning"></td>
							</tr>
						</form>
						<form action="AllAnimalsReport">
							<tr>
								<th>All Animals Report</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-danger"></td>
							</tr>
						</form>
						<form action="AllClientsReviews">
							<tr>
								<th>Reviews Report</th>
								<td><input type="submit" value="Generate Reports"
									class="btn btn-success"></td>
							</tr>
						</form>
					</tbody>
				</table>
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
</body>
</html>