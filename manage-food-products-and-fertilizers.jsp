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
				<h4 class="header-line">Manage Food Products & Fertilizers</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/animal-food.jpg"
					style="width: 500px; height: 400px;">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<%
					String message = (String) session.getAttribute("addedMessage");
					if (message != null) {
						session.removeAttribute("addedMessage");
				%>
				<div class='alert alert-success' id="success">Added
					successfully.</div>
				<%
					}
				%>
				<div class="panel panel-danger">
					<div class="panel-heading">Manage Food Products & Fertilizers</div>
					<div class="panel-body">
						<form role="form" action="AdminManageFoodAndFertilizers" method="post">
							<div class="form-group">
								<label>Name</label> <input class="form-control" type="text"
									name="fname" id="fname" value="" placeholder="Food Products OR Fertilizers Name">
							</div>
							<div class="form-group">
								<label>Category</label> <select class="form-control" name="category" id="category">
								<option disabled="disabled">Select</option>
								<option>Food Product</option>
								<option>Fertilizers</option>
								</select>
							</div>
							<div class="form-group">
								<label>Quantity</label> <input class="form-control" type="text"
									name="quantity" id="quantity" value="" placeholder="Quantity"/>
							</div>
							<div class="form-group">
								<label>Description</label> <textarea class="form-control" name="description" id="description"
									 value="" placeholder="Description"></textarea>
							</div>
							<div class="form-group">
								<label>Amount</label> <input class="form-control"
									name="amount" id="amount" type="text"
									value="" placeholder="Amount"/>
							</div>
							<button type="submit" class="btn btn-info" id="buttonValidate">Add</button>
							<button type="reset" class="btn btn-danger">Clear</button>
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
             var fname = $("#fname").val();
             var category = $("#category").val();
             var quantity = $("#quantity").val();
             var description = $("#description").val();
             var amount = $("#amount").val();
             if (fname === "" || category === "" || quantity === "" || description === "" || amount === "")
             {
                 $("#fname").css("border-color", "red");
                 $("#category").css("border-color", "red");
                 $("#quantity").css("border-color", "red");
                 $("#description").css("border-color", "red");
                 $("#amount").css("border-color", "red");
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
</script>
</html>