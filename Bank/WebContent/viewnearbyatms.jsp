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
<script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>
    	<!-- meta character set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <title>ATM's</title>		
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <meta name="author" content="Muhammad Morshed">
		
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- CSS
		================================================== -->
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		
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
        <header id="navigation" class="navbar-inverse navbar-fixed-top animated-header" style="background-color:#009EE3;;opacity:0.6">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
                    </button>
					<!-- /responsive nav button -->
					
					<!-- logo -->
					<h1 class="navbar-brand">
						<a href="dashboard.jsp#body" style="color:white">CONFIANCE</a>
					</h1>
					<!-- /logo -->
                </div>

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul  class="nav navbar-nav">
                        <li><a href="dashboard.jsp#body">Home</a></li>
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
        <main class="site-content" role="main">
           
            <section> <div></div> </section>


            <section> <div>
            
            <div id="map" style="width: 500px; height: 400px;"></div>


<script type="text/javascript">


if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (position) {
        alert("We are using your current location"+position.coords.latitude + ", " + position.coords.longitude);
        var uluru = {lat: position.coords.latitude, lng: position.coords.longitude};
        
        
        
        var locations = [
        	
            ['Mahape', 19.109487624150233, 73.02779674530031, 4],
            ['Thane', 19.6051128, 73.08619185166403, 5],
            ['Ghatkopar', 19.0859539, 72.9082381, 3],
            ['Dadar',19.0135639, 72.84251, 2],
            ['Borivali', 19.2287385, 72.8568773, 1]
          ];

          var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 10,
            center: new google.maps.LatLng(19.1, 73),
            mapTypeId: google.maps.MapTypeId.ROADMAP
          });

          var infowindow = new google.maps.InfoWindow();

          var marker, i;

          for (i = 0; i < locations.length; i++) {  
            marker = new google.maps.Marker({
              position: new google.maps.LatLng(locations[i][1], locations[i][2]),
              map: map
            });
            
            var icon = {
          		    url: "images/icon3.png", // url
          		    scaledSize: new google.maps.Size(80, 80), // scaled size
          		    origin: new google.maps.Point(0,0), // origin
          		    anchor: new google.maps.Point(0, 0) // anchor
          		};
            
         
            var marker1 = new google.maps.Marker({position: uluru, map: map});  
            marker1.setIcon(icon);
            
      			/*  var uluru = {lat: -25.344, lng: 131.036};
      				 var marker = new google.maps.Marker({
      				     position: uluru,
      				     icon: images/Batman.jpg,
      				     map: map
      				   }); */

      				google.maps.event.addListener(marker, 'click', (function(
      						marker, i) {
      					return function() {
      						infowindow.setContent(locations[i][0]);
      						infowindow.open(map, marker);
      					}
      				})(marker, i));
      			}
        
        });

    }


  
  
  
   
		</script>
		
	


            </div> </section>



            <section> <div></div> </section>
            
        </main>
            




        <footer id="footer" style="background-color:black;">
                <div class="container">
                    <div class="row text-center">
                        <div class="footer-content">
                            <div class="wow animated fadeInDown">
                                <p>newsletter signup</p>
                                <p>Get Cool Stuff! We hate spam!</p>
                            </div>
                            <form action="#" method="post" class="subscribe-form wow animated fadeInUp">
                                <div class="input-field">
                                    <input type="email" class="subscribe form-control" placeholder="Enter Your Email...">
                                    <button type="submit" class="submit-icon">
                                        <i class="fa fa-paper-plane fa-lg"></i>
                                    </button>
                                </div>
                            </form>
                            <div class="footer-social">
                                <ul>
                                    <li class="wow animated zoomIn"><a href="#"><i class="fa fa-thumbs-up fa-3x"></i></a></li>
                                    <li class="wow animated zoomIn" data-wow-delay="0.3s"><a href="#"><i class="fa fa-twitter fa-3x"></i></a></li>
                                    <li class="wow animated zoomIn" data-wow-delay="0.6s"><a href="#"><i class="fa fa-skype fa-3x"></i></a></li>
                                    <li class="wow animated zoomIn" data-wow-delay="0.9s"><a href="#"><i class="fa fa-dribbble fa-3x"></i></a></li>
                                    <li class="wow animated zoomIn" data-wow-delay="1.2s"><a href="#"><i class="fa fa-youtube fa-3x"></i></a></li>
                                </ul>
                            </div>
                            
                            <p>Copyright &copy; 2014-2015 Design and Developed By<a href="http://www.themefisher.com">Themefisher</a> </p>
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

