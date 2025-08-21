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
	<jsp:include page="farmer-side-header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">View Response Of Consult Doctor</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<%
					String message = (String) session.getAttribute("addedMessage");
				if (message != null) {
					session.removeAttribute("addedMessage");
				%>
				<div class='alert alert-success' id="success">Doctor consult
					fees paid sucessfully.</div>
				<%
					}
				%>
				<div class="panel panel-primary shadow p-3 mb-5">
					<div class="panel-heading">View Request For Consult</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Response Id</th>
										<th>Farmer Name</th>
										<th>Doctor Name</th>
										<th>Doctor Fees</th>
										<th>Response</th>
										<th>Payment Status</th>
										<th>Response Date & Time</th>
										<th>Action</th>
									</tr>
								</thead>
								<%
									String doctor_name = null;
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery(
										"select * from tblresponse where farmer_name='" + session.getAttribute("farmer-name") + "'");
								while (resultset.next()) {
									ResultSet rs = DatabaseConnection.getResultFromSqlQuery(
									"select doctor_name from tbldoctor where doctor_id='" + resultset.getString("doctor_id") + "'");
									if (rs.next()) {
										doctor_name = rs.getString(1);
									}
								%>
								<tbody>
									<tr class="default">
										<td><%=resultset.getString("response_id")%></td>
										<td><%=resultset.getString("farmer_name")%></td>
										<td><%=doctor_name%></td>
										<td><span class="label label-info"><%=resultset.getInt("fees")%>&nbsp;Rs/-</span></td>
										<td><%=resultset.getString("response")%></td>
										<%
											if (resultset.getInt("status") == 0) {
										%>
										<td><span class="label label-danger">Payment Pending</span></td>	
										<%
											} else {
										%>
										<td><span class="label label-success">Payment Done</span></td>
										<%
											}
										%>
										<td><%=resultset.getString("updated_at")%></td>
										<%
											if (resultset.getInt("status") == 0) {
										%>
										<td><a href="farmer-pay-doctor-consult-fees.jsp?id=<%=resultset.getString("response_id")%>&farmerName=<%=resultset.getString("farmer_name")%>&doctorName=<%=doctor_name%>&doctorFees=<%=resultset.getInt("fees")%>&doctorResponse=<%=resultset.getString("response")%>"
											class="btn btn-info">Pay Doctor Fees</a></td>	
										<%
											} else {
										%>
										<td><span class="label label-info">No Need Action</span></td>
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