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
	<div class="container"><br>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/request-to-buy.JPG"
					style="width: 500px; height: 400px;">
			</div>

			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="panel panel-info">
					<div class="panel-heading">Request To Buy</div>
					<div class="panel-body">
						<form role="form" action="RequestToBuyAnimal" method="post">
							<%
								String farmerName=null;
								String animalId=request.getParameter("animalId");
								ResultSet resultset=DatabaseConnection.getResultFromSqlQuery("select * from tblanimal where animal_id='"+animalId+"'");
								if(resultset.next()){
									farmerName=resultset.getString("farmer_name");
								}
							%>
							<div class="form-group">
								<label>Animal Id</label> <input class="form-control"
									type="text" name="animalId"
									value="<%=animalId%>" readonly />
							</div>
							<div class="form-group">
								<label>Farmer Name</label> <input class="form-control"
									type="text" name="farmerName"
									value="<%=farmerName%>" readonly />
							</div>
							<div class="form-group">
								<label>Client Name</label> <input class="form-control" type="text"
									name="client_name" value="<%=session.getAttribute("client_name")%>" readonly/>
							</div>
							<div class="form-group">
								<label>Mobile No</label> <input class="form-control" name="mobile"
									type="text" value="<%=session.getAttribute("client_mobile")%>" readonly/>
							</div>
							<div class="form-group">
								<label>Request Description</label><textarea name="description" id="description" class="form-control"></textarea>
							</div>
							<button type="submit" class="btn btn-info" id="buttonValidate">Send Request</button>
							
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
             var description = $("#description").val();
            
             if (description === "")
             {
                 $("#description").css("border-color", "red");
                 alert("fields are mendatory.");
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