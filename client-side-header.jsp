<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header class="header header_style_01">
	<nav class="megamenu navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="active" href="client-dashboard.jsp"><strong>Home</strong></a></li>
					<li><a class="btn-primary btn-radius btn-brd log" href="client-view-animals-details.jsp"><strong>View Animal Details</strong></a></li>
					<li><a class="btn-primary btn-radius btn-brd log" href="client-post-request-to-buy.jsp"><strong>Post Request To Buy</strong></a></li>
					<li><a class="btn-primary btn-radius btn-brd log" href="client-view-post-buying-response.jsp"><strong>View Post Buying Response</strong></a></li>
					<li><a class="btn-primary btn-radius btn-brd log" href="client-buy-animal.jsp"><strong>Buy Animals</strong></a></li>
					<li><a class="btn-primary btn-radius btn-brd log" href="client-profile.jsp"><strong>Manage Profile</strong></a></li>
					<li><a class="btn-primary btn-radius btn-brd log" href="client-add-review.jsp"><strong>Add Review</strong></a></li> 
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span class="caret"></span><strong> My Account</strong></a>
						<ul class="dropdown-menu">
							<li><a href="client-change-password.jsp"><strong>Change Password</strong></a></li>
							<li><a href="logout.jsp"><strong>Logout</strong></a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</header>