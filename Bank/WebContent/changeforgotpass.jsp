<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@page import="com.bank.entity.Payee"%>
<%@page import="com.bank.entity.Aadhaar"%>
<%@page import="com.bank.entity.Accounts"%>
<%@page import="com.bank.entity.Cards"%>
<%@page import="com.bank.entity.FixedDeposit"%>
<%@page import="com.bank.entity.Transactions"%>
<!-- meta character set -->
<meta charset="utf-8">
<!-- Always force latest IE rendering engine or request Chrome Frame -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Change forgot Password</title>
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

<style>
/* Style all input fields */
input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 5px;
}

/* Style the submit button */
input[type=submit] {
	background-color: #4CAF50;
	color: white;
}

/* Style the container for inputs */
.container {
	background-color: #f1f1f1;
	padding: 5px;
}

/* The message box is shown when the user clicks on the password field */
#message {
	display: none;
	background: #f1f1f1;
	color: #000;
	position: relative;
	padding: 5px;
	margin-top: 5px;
}

#message p {
	padding: 5px 5px;
	font-size: 16px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
	color: green;
}

.valid:before {
	position: relative;
	left: -35px;
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	left: -35px;
}
</style>

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
		class="navbar-inverse navbar-fixed-top animated-header"
		style="background-color: #009EE3;; opacity: 0.6">
		<div class="container" style="background-color:transparent">
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
					<a href="dashboard.jsp#body" style="color: white">CONFIANCE</a>
				</h1>
				<!-- /logo -->
			</div>

			<!-- main nav -->
			<nav class="collapse navbar-collapse navbar-right" role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp#body">Home</a></li>
					<li><a href="index.jsp#fund-transfer">Fund Transfer</a></li>
					<li><a href="index.jsp#fixed-deposit">Fixed Deposit</a></li>
					<li><a href="index.jsp#testimonials">Virtual Card</a></li>
					<li><a href="index.jsp#statement">Statement</a></li>
					<li><a href="index.jsp#contact">Contact</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</nav>
			<!-- /main nav -->

			

		</div>
	</header>
	<!--
        End Fixed Navigation
        ==================================== -->
	<main class="site-content" role="main">

	<section>
		<div></div>
	</section>


	<section>
		<div>


			<form action="commitforgotpass.bank" method="post">
				<input type="text" style="display: none;" name="phoneUpi"
					value="${Phone}"> 
					
					Enter New Password : <input type="text"
					name="newPass" id="password"  onkeyup='check();' required> 
					
					Confirm New Password : <input
					type="text" name="confirmNewPass" id="confirmPassword" onkeyup='check();' required> 
					<span id='message1'></span>
					
					<input
					type="submit" id="submit" disabled">
			</form>


		</div>
		
		<div id="message">
		<h4>Password must contain the following:</h4>
		<p id="character" class="invalid">
		<b>Atleast 1 Special Character</b>
		</p>
		<p id="letter" class="invalid">
		<b>Atleast 1 Lowercase</b> letter
		</p>
		<p id="capital" class="invalid">
		<b>Atleast 1 Uppercase</b> letter
		</p>
		<p id="number" class="invalid">
	    <b>Atleast 1 Number</b>
		</p>
		<p id="length" class="invalid">
			Length between <b>8 to 10 characters</b>
		</p>
	</div>
	
	<script>
	
	var check = function() {
		  if (document.getElementById('password').value == document.getElementById('confirmPassword').value) {
		    document.getElementById('message1').style.color = 'green';
		    document.getElementById('message1').innerHTML = 'matching';
		    document.getElementById('submit').disabled = false;
		  } else {
		    document.getElementById('message1').style.color = 'red';
		    document.getElementById('message1').innerHTML = 'not matching';
		    document.getElementById('submit').disabled = true;
		  }
		}
	
	
		var myInput = document.getElementById("password");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var character = document.getElementById("character");
		var length = document.getElementById("length");

		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
			document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
			document.getElementById("message").style.display = "none";
		}

		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
			// Validate lowercase letters
			var lowerCaseLetters = /[a-z]/g;
			if (myInput.value.match(lowerCaseLetters)) {
				letter.classList.remove("invalid");
				letter.classList.add("valid");
			} else {
				letter.classList.remove("valid");
				letter.classList.add("invalid");
			}

			// Validate characters
			var characters = /[!@#$%^&*()_+]/g;
			if (myInput.value.match(characters)) {
				character.classList.remove("invalid");
				character.classList.add("valid");
			} else {
				character.classList.remove("valid");
				character.classList.add("invalid");
			}

			// Validate capital letters
			var upperCaseLetters = /[A-Z]/g;
			if (myInput.value.match(upperCaseLetters)) {
				capital.classList.remove("invalid");
				capital.classList.add("valid");
			} else {
				capital.classList.remove("valid");
				capital.classList.add("invalid");
			}

			// Validate numbers
			var numbers = /[0-9]/g;
			if (myInput.value.match(numbers)) {
				number.classList.remove("invalid");
				number.classList.add("valid");
			} else {
				number.classList.remove("valid");
				number.classList.add("invalid");
			}

			// Validate length
			if ((myInput.value.length >= 8) && (myInput.value.length <= 13)) {
				length.classList.remove("invalid");
				length.classList.add("valid");
			} else {
				length.classList.remove("valid");
				length.classList.add("invalid");
			}
		}
		
	</script>
	
		
	</section>



	<section>
		<div></div>
	</section>

	</main>





	<footer id="footer" style="background-color: black;">
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

					<p>
						Copyright &copy; 2014-2015 Design and Developed By<a
							href="http://www.themefisher.com">Themefisher</a>
					</p>
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