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
	<jsp:include page="doctor-side-header.jsp"></jsp:include>
	<div class="container">
		<br>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/response.png"
					style="width: 600px; height: 300px;">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">Give Response</div>
					<div class="panel-body">
						<form role="form" action="DoctorGiveResponseToConsult" method="post">
							<%
								String responseId=DatabaseConnection.generateResponseId();
								int id=Integer.parseInt(request.getParameter("id"));
								ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblsymptoms where id='"+ id + "'");
								while (resultset.next()) {
							%>
							<div class="form-group">
								<label>Response Id</label> <input class="form-control"
									type="text" name="responseId"
									value="<%=responseId%>" readonly />
							</div>
							<div class="form-group">
								<label>Farmer Name</label> <input class="form-control"
									type="text" name="farmer_name"
									value="<%=resultset.getString("farmer_name")%>" readonly />
							</div>
							<div class="form-group">
								<label>Doctor Id</label> <input class="form-control"
									type="text" name="doctor_id" value="<%=session.getAttribute("doctor-id")%>" readonly/>
							</div>
							<div class="form-group">
								<label>Give Response <span class="label label-danger">Medical prescription for this disease here</span></label> <textarea class="form-control"
									 name="response" id="response" value="" placeholder="Give Response" rows="5"></textarea>
							</div>
							<div class="form-group">
								<label>Fees</label> <input class="form-control"
									type="text" name="fees" value="<%=session.getAttribute("doctor-fees")%>" readonly/>
							</div>
							<button type="submit" class="btn btn-info" id="buttonValidate">Give Response</button>
							<%
								}
							%>
						</form>
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
             var response = $("#response").val();
             if (response === "")
             {           
                 $("#response").css("border-color", "red");
                
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