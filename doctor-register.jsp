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
	<jsp:include page="header.jsp"></jsp:include><br>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="images/doctor-account.JPG"
					style="width: 300px; height: 400px;">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<%
					String adminRegister = (String) session.getAttribute("success-message");
				if (adminRegister != null) {
					session.removeAttribute("success-message");
				%>
				<div class="alert alert-success" id="success">Doctor account
					created successfully.</div>
				<%
					}
				%>
				<div class="panel panel-default">
					<div class="panel-heading">Create Doctor Account</div>
					<div class="panel-body">
						<form role="form" action="DoctorAccountCreate" method="post" name="doctorForm" role="form">
							<div class="form-group">
								<label>Doctor Id</label>
								<%
									String doctorId = DatabaseConnection.generateDoctorId();
								%>
								<input class="form-control" type="text" value="<%=doctorId%>"
									name="doctorId" readonly />
							</div>
							<div class="form-group">
								<label>Doctor Name</label> <input class="form-control"
									type="text" name="doctorName" id="doctorName" placeholder="Doctor Name" onkeypress="return lettersValidate(event)"/>
							</div>

							<div class="form-group">
								<label>Department</label> <input class="form-control"
									type="text" name="department" id="department" placeholder="Department" onkeypress="return lettersValidate(event)"/>
							</div>
							<div class="form-group">
								<label>User Name</label> <input class="form-control" type="text"
									name="uname" id="uname" placeholder="User Name"/>
							</div>
							<div class="form-group">
								<label>Password</label> <input class="form-control"
									type="password" name="upass" id="upass" placeholder="Password" oninput="limitChar(this)"
												maxlength="12"/>
							</div>
							<button type="submit" class="btn btn-info" id="buttonValidate">Create
								Account</button>
							<a class="for-pwd" href="doctor-login.jsp">Already
								registered,Please Login</a>
						</form>
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
</body>
<script type="text/javascript">
		let limitChar = (element) => {
	        const maxChar = 12;
	        
	        let ele = document.getElementById(element.id);
	        let charLen = ele.value.length;
	        
	        let p = document.getElementById('charCounter');
	        p.innerHTML = maxChar - charLen + ' characters remaining';
	        
	        if (charLen > maxChar) 
	        {
	            ele.value = ele.value.substring(0, maxChar);
	            p.innerHTML = 0 + ' characters remaining'; 
	        }
	    }
		let limitNumber = (element) => {
	        const maxNumber = 6;
	        
	        let ele = document.getElementById(element.id);
	        let numberLen = ele.value.length;
	        
	        let p = document.getElementById('numberCounter');
	        p.innerHTML = maxNumber - numberLen + ' number remaining';
	        
	        if (numberLen > maxNumber) 
	        {
	            ele.value = ele.value.substring(0, maxNumber);
	            p.innerHTML = 0 + ' number remaining'; 
	        }
	    }
		function lettersValidate(key) {
	    	var keycode = (key.which) ? key.which : key.keyCode;
	   		if ((keycode > 64 && keycode < 91) || (keycode > 96 && keycode < 123) || keycode == 32)  
	    	{     
	           return true;    
	    	}else{
	           return false;
	    	}    
	    }
		function numberValidate(key) {
	    	var keycode = (key.which) ? key.which : key.keyCode;
	   		if ((keycode > 47 && keycode < 58))  
	    	{     
	           return true;    
	    	}else{
	           return false;
	    	} 
	    }
</script>
<script>
	 $(document).ready(function() {
         $("#buttonValidate").click(function() {
             var doctorName = $("#doctorName").val();
             var department = $("#department").val();
             var uname = $("#uname").val();
             var upass = $("#upass").val();
             if (doctorName === "" || department === "" || uname === "" || upass === "")
             {
                 $("#doctorName").css("border-color", "red");
                 $("#department").css("border-color", "red");
                 $("#uname").css("border-color", "red");
                 $("#upass").css("border-color", "red");
                 alert("All fields are mendatory.");
                 return false;
             }
         });
     });                                              
</script>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
<script>
	//This function will validate Email.
	function ValidateEmail() {
		var uemail = document.clientRegister.emailId;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (uemail.value.match(mailformat)) {
			document.clientRegister.desc.focus();
			return true;
		} else {
			alert("Please enter valid email id.!");
			uemail.focus();
			return false;
		}
	}

	function ValidateMobNumber(txtMobId) {
		var fld = document.getElementById(txtMobId);
		if (fld.value == "") {
			alert("You didn't enter a phone number.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The phone number contains illegal characters.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			fld.focus();
			return false;
		}

	}
</script>
</html>