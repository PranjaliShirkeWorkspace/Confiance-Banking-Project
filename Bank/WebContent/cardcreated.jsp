<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.bank.entity.Accounts"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- meta character set -->
<meta charset="utf-8">
<!-- Always force latest IE rendering engine or request Chrome Frame -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Card Created</title>
<!-- Meta Description -->
<meta name="description" content="Blue One Page Creative HTML5 Template">
<meta name="keywords"
	content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta name="author" content="Muhammad Morshed">

<!-- Mobile Specific Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS
		================================================== -->

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
	rel='stylesheet' type='text/css'>

<!-- Fontawesome Icon font -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- bootstrap.min -->
<link rel="stylesheet" href="css/jquery.fancybox.css">
<!-- bootstrap.min -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- bootstrap.min -->
<link rel="stylesheet" href="css/owl.carousel.css">
<!-- bootstrap.min -->
<link rel="stylesheet" href="css/slit-slider.css">
<!-- bootstrap.min -->
<link rel="stylesheet" href="css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/main.css">

<!-- Modernizer Script for old Browsers -->
<script src="js/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/styles.css" />

</head>

<body id="body">
	<!-- preloader -->
	<div id="preloader">
		<div class="loder-box">
			<div class="battery"></div>
		</div>
	</div>
	<!-- end preloader -->

	<!--
        Fixed Navigation
        ==================================== -->
	<header id="navigation"
		class="navbar-inverse navbar-fixed-top animated-header" style="background-color:#009EE3;;opacity:0.6">
		<div class="container">
			<div class="navbar-header">
				<!-- responsive nav button -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- /responsive nav button -->

				<!-- logo -->
				<h1 class="navbar-brand">
					<a href="index.jsp#body" style="color:white">CONFIANCE</a>
				</h1>
				<!-- /logo -->
			</div>

			<!-- main nav -->
			<nav class="collapse navbar-collapse navbar-right" role="navigation">
				<ul class="nav navbar-nav">
					<<li><a href="dashboard.jsp#body">Home</a></li>
					<li><a href="dashboard.jsp#fund-transfer">Fund Transfer</a></li>
					<li><a href="viewcurrencyconverion.jsp">Currency</a></li>
					<li><a href="dashboard.jsp#fixed-deposit">Fixed Deposit</a></li>
					<li><a href="dashboard.jsp#testimonials">Virtual Card</a></li>
					<li><a href="dashboard.jsp#statement">Statement</a></li>
					
					<li><a href="changepassword.jsp" >Change
							Password</a></li>
							
							<li><a href="logout.bank" >Logout</a></li>
				</ul>
			</nav>
			<!-- /main nav -->
			
			
			
			
			

		</div>
	</header>
	<!--
        End Fixed Navigation
        ==================================== -->
	<main class="site-content" role="main"> <!--
        Home Slider
        ==================================== -->

	
	





<section>
<div>
<section>
<div style="margin-top:10%">
<h2>Congratulations your card has been activated successfully !!</h2>


</div>
</section>
	
	
	<div class="my-cc" >
		<div class="container">
			<div class="row"></div>

			<div class="row">

				<div class="col-md-6 col-sm-6 col-xs-12">
					<!-- Card -->


					<div class="col-md-6 col-sm-6 col-xs-12">
						<!-- Card -->
						<div class="item item-black item-image"
							style="background-image: url('images/bg-2.jpg');">
							<!-- Transparent Image -->
							<img src="images/transparent.png" alt="" class="img-responsive" />
							<!-- Heading -->
							<div class="item-heading clearfix">
								<!-- Heading -->
								<h3>Virtual Card</h3>
								<!-- Bank Name -->
								<h4>CONFIANCE Bank</h4>
							</div>
							<!-- Account -->
							<div class="item-account">
								<!-- Value -->
								<span>${CardNo1}</span> <span>${CardNo2}</span> <span>${CardNo3}</span>
								<span>${CardNo4}</span>
							</div>
							<!-- Validity Starts -->
							<div class="item-validity">
								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-6">
										<!-- Item -->
										<div class="item-valid clearfix">
											<!-- Valid From
                                            <h5>Valid From</h5>
                                            Date -->
											${Name}
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-6">
										<!-- Item -->
										<div class="item-valid clearfix">
											<!-- Valid Thru -->
											<h5>Valid Thru</h5>
											<!-- Date -->
											<span>${Date}</span>
										</div>
									</div>
								</div>
							</div>
							<!-- Validity Ends -->

							<!-- Card Type Starts -->
							<div class="item-cc-type clearfix">
								<!-- Type -->
								<h6>Master Card</h6>
								<!-- Icon -->
								<i class="fa fa-cc-mastercard"></i>
							</div>
							<!-- Card Type Ends -->
						</div>
					</div>
				</div>
			</div>
		</div>       </div>
        </section>
        
	<!-- jQuery -->
        <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Plugin JavaScript -->
        <script src="js/placeholder.min.js" type="text/javascript"></script>
	
<%-- 	<div class="alert-info">${Info}</div> --%>




<footer id="footer">
		<div class="container">
			<div class="row text-center">
				<div class="footer-content">
					<div class="wow animated fadeInDown">
						<p>newsletter signup</p>
						<p>Get Cool Stuff! We hate spam!</p>
					</div>
					<form action="#" method="post"
						class="subscribe-form wow animated fadeInUp">
						<div class="input-field">
							<input type="email" class="subscribe form-control"
								placeholder="Enter Your Email...">
							<button type="submit" class="submit-icon">
								<i class="fa fa-paper-plane fa-lg"></i>
							</button>
						</div>
					</form>
					<div class="footer-social">
						<ul>
							<li class="wow animated zoomIn"><a href="#"><i
									class="fa fa-thumbs-up fa-3x"></i></a></li>
							<li class="wow animated zoomIn" data-wow-delay="0.3s"><a
								href="#"><i class="fa fa-twitter fa-3x"></i></a></li>
							<li class="wow animated zoomIn" data-wow-delay="0.6s"><a
								href="#"><i class="fa fa-skype fa-3x"></i></a></li>
							<li class="wow animated zoomIn" data-wow-delay="0.9s"><a
								href="#"><i class="fa fa-dribbble fa-3x"></i></a></li>
							<li class="wow animated zoomIn" data-wow-delay="1.2s"><a
								href="#"><i class="fa fa-youtube fa-3x"></i></a></li>
						</ul>
					</div>

					<p>Copyright &copy; 2017-2020 Design and Developed By Confiance </p>
				</div>
			</div>
		</div>
	</footer>


	<!-- Essential jQuery Plugins
		================================================== -->
	<!-- Main jQuery -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Twitter Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Single Page Nav -->
	<script src="js/jquery.singlePageNav.min.js"></script>
	<!-- jquery.fancybox.pack -->
	<script src="js/jquery.fancybox.pack.js"></script>
	<!-- Google Map API -->
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- jquery easing -->
	<script src="js/jquery.easing.min.js"></script>
	<!-- Fullscreen slider -->
	<script src="js/jquery.slitslider.js"></script>
	<script src="js/jquery.ba-cond.min.js"></script>
	<!-- onscroll animation -->
	<script src="js/wow.min.js"></script>
	<!-- Custom Functions -->
	<script src="js/main.js"></script>
</body>
</html>