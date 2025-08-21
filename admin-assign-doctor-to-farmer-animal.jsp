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
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-12">
				<h4 class="header-line">Assign Doctor</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-12">
				<img src="images/assign.png" style="width: 250px; height: 300px;">
			</div>

			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="panel panel-danger">
					<div class="panel-heading">Assign Doctor</div>
					<div class="panel-body">
						<form role="form" action="AssignDoctorToFarmerPet" method="post">
							<%
								int id = Integer.parseInt(request.getParameter("id"));
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblsymptoms where id='" + id + "'");
								while (resultset.next()) {
							%>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Id</label> <input class="form-control" type="text"
										name="id" value="<%=resultset.getString("id")%>" readonly />
								</div>
								<div class="form-group col-md-6">
									<label>Farmer Name</label> <input class="form-control"
										type="text" name="farmerName"
										value="<%=resultset.getString("farmer_name")%>" readonly />
								</div>

							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Animal Name</label> <input class="form-control"
										type="text" name="animalName"
										value="<%=resultset.getString("animal_name")%>" readonly />
								</div>
								<div class="form-group col-md-6">
									<label>Animal Type</label> <input class="form-control"
										name="upass" type="animalType"
										value="<%=resultset.getString("animal_type")%>" readonly />
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Animal Photo</label>
									<image
										src="uploads/<%=resultset.getString("disease_image_name")%>"
										width="100" height="70"></image>
								</div>
								<div class="form-group col-md-6">
									<label>Disease Name</label> <input class="form-control"
										type="text" value="<%=resultset.getString("disease_name")%>"
										readonly name="diseaseName" />
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-12">
									<label>Description</label>
									<textarea class="form-control" type="text" name="description"
										value="" readonly><%=resultset.getString("description")%></textarea>
								</div>
							</div>
							<%
								}
							%>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Doctors Name</label> <select name="doctorName"
										class="form-control">
										<option disabled="disabled">Select Doctor</option>
										<%
											ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tbldoctor");
											while (rs.next()) {
										%>
											<option><%=rs.getString("doctor_name")%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label></label><br>
									<button type="submit" class="btn btn-info">Assign
										Doctor</button>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});
</script>
</html>