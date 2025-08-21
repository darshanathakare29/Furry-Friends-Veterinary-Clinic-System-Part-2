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
	<div class="container">
		<br>
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<img src="images/4.jpg" style="width: 400px; height: 350px;">
			</div>
			<div class="col-md-8 col-sm-8 col-xs-12">
				<%
					String message = (String) session.getAttribute("addedMessage");
					if (message != null) {
						session.removeAttribute("addedMessage");
				%>
				<div class='alert alert-success' id="success">Farmer added animal to sell
					successfully.</div>
				<%
					}
				%>
				<div class="panel panel-primary">
					<div class="panel-heading">Add Animal Details</div>
					<div class="panel-body">
						<form role="form" action="FarmerAddAnimalDetailsToSell"
							method="post" enctype="multipart/form-data">
							<div class="form-row">
								<%
									String animalId = DatabaseConnection.generateAnimalId();
								%>
								<div class="form-group col-md-6">
									<label>Animal Id</label> <input class="form-control"
										type="text" name="animalId" value="<%=animalId%>" readonly />
								</div>
								<div class="form-group col-md-6">
									<label>Animal Name</label> <input class="form-control"
										name="animalName" type="text" value="" id="animalName" placeholder="Animal Name"/>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Animal Type</label> <select class="form-control"
										name="animalType" id="animalType">
										<option>Mammals</option>
										<option>Birds</option>
										<option>Reptiles</option>
										<option>Amphibian</option>
										<option>Fish</option>
										<option>Invertebrates</option>
									</select>
								</div>
								<div class="form-group col-md-6">
									<label>Description</label>
									<textarea class="form-control" name="description" value="" id="description" placeholder="Description"></textarea>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Animal Price</label> <input class="form-control"
										name="animalPrice" type="text" value="" id="animalPrice" placeholder="Animal Price"/>
								</div>
								<div class="form-group col-md-6">
									<label>Contat Details</label> <input class="form-control"
										name="contact" type="text" value="" id="contact" placeholder="Mobile No"/>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Farmer Name</label> <input class="form-control"
										name="farmer_name" type="text"
										value="<%=session.getAttribute("farmer-name")%>" readonly />
								</div>
								<div class="form-group col-md-6">
									<label>Animal Image</label> <input class="form-control"
										name="file" type="file" value="" id="file"/>
								</div>

							</div>
							<button type="submit" class="btn btn-info" id="buttonValidate">Add Animal To
								Sell</button>
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
<script>
	 $(document).ready(function() {
         $("#buttonValidate").click(function() {
             var animalName = $("#animalName").val();
             var animalType = $("#animalType").val();
             var description = $("#description").val();
             var animalPrice = $("#animalPrice").val();
             var contact = $("#contact").val();
             var file = $("#file").val();
             if (animalName === "" || animalType === "" || description === "" || animalPrice === "" || file === "" || contact === "")
             {
                 $("#animalName").css("border-color", "red");
                 $("#animalType").css("border-color", "red");
                 $("#description").css("border-color", "red");
                 $("#animalPrice").css("border-color", "red");
                 $("#contact").css("border-color", "red");
                 $("#file").css("border-color", "red");
                 alert("All fields are mendatory.");
                 return false;
             }
         });
     });                                              
</script>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});
</script>
</html>