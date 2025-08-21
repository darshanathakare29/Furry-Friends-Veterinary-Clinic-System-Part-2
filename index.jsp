<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version">
	<jsp:include page="header.jsp"></jsp:include>
	<div id="bootstrap-touch-slider"
		class="carousel bs-slider fade  control-round indicators-line"
		data-ride="carousel" data-pause="hover" data-interval="false">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#bootstrap-touch-slider" data-slide-to="0"
				class="active"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div id="home" class="first-section"
					style="background-image: url('images/1.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<h2 data-animation="animated zoomInRight">
										<strong>Veternary Clinic System</strong>
									</h2>
									<p class="lead" data-animation="animated fadeInLeft">All
										kinds of care for all kinds of pets.</p>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section"
					style="background-image: url('images/2.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<h2 data-animation="animated zoomInRight">
										<strong>Veternary Clinic System</strong>
									</h2>
									<p class="lead" data-animation="animated fadeInLeft">Animal
										lovers for animal lovers.</p>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section"
					style="background-image: url('images/3.jpg');">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<h2 data-animation="animated zoomInRight">
										<strong>Veternary Clinic System</strong>
									</h2>
									<p class="lead" data-animation="animated fadeInLeft">Excellent
										pets deserve excellent care.</p>
								</div>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="left carousel-control" href="#bootstrap-touch-slider"
				role="button" data-slide="prev"> <span class="fa fa-angle-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="right carousel-control" href="#bootstrap-touch-slider"
				role="button" data-slide="next"> <span class="fa fa-angle-right"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div id="overviews" class="section wb">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3>About Us</h3>
					<p class="lead">Veterinary clinic system had been established
						with the objective to help animals with a health problem or
						physically injured, giving a medical care to the pets.</p>
				</div>
			</div>
			<!-- end title -->

			<div class="row">
				<div class="col-md-6">
					<div class="message-box">
						<h4>Veternary Clinic System</h4>
						<p class="lead">Animals teach us how to live in community. They do not look
							at another and discriminate, thinking he is the wrong color, the
							wrong gender, the wrong sexual orientation, the wrong species. A
							stray baby animal can be raised by the mother of another species
							without a problem. It is how we should all be living.</p>
						<p></p>
					</div>
					<!-- end messagebox -->
				</div>
				<!-- end col -->

				<div class="col-md-6">
					<div class="post-media wow fadeIn">
						<img src="images/logos/4.jpg" alt=""
							class="img-responsive img-rounded">
					</div>
					<!-- end media -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->

			<hr class="invis">

			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.2s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Companion Animal Veterinarians</h3>
					</div>
					<!-- end icon-wrapper -->
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.6s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Veterinary Specialists</h3>
					</div>
					<!-- end icon-wrapper -->
				</div>
			</div>
			<hr class="hr3">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.4s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Food Animal Veterinarians</h3>
					</div>
					<!-- end icon-wrapper -->
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.2s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Food Safety & Inspection Veterinarians</h3>
					</div>
					<!-- end icon-wrapper -->
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<!-- end section -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- end copyrights -->

	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/all.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/custom.js"></script>

</body>
</html>