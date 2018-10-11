<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confiance Payment</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="css/bootstrap.min.css" />">
<script src="<c:url value="js/jquery.2.2.4.min.js" />"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
.imgdiv {
	background-image: url(images/bankbw.jpg);
	position: relative;
	height: 700px;
	width: 100%;
	background-repeat: repeat-x;
	cursor: pointer;
	background-size: 100% 700px;
}

.div-content {
	background: rgba(51, 103, 180, 0.6);
	width: 100%;
	height: 700px;
	font-size: 500%;
}

.no-js #loader {
	display: none;
}

.js #loader {
	display: block;
	position: absolute;
	left: 100px;
	top: 0;
}

.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url(images/preloader1.gif) center no-repeat #fff;
}
</style>
</head>
<body>
	<div class="se-pre-con" id="loader"></div>

	<script>
		setTimeout('document.getElementById("loader").style.display="none"',
				5000); // 5 seconds
	</script>
	<div class="imgdiv">


		<div class="div-content" style="position: absolute; ">
		<center>
		<div style="margin-top: 150px;">
		
			<font color="white" size="25px">CONFIANCE BANK</font><br>
			<font color="white" size="5px">Card Number : ${CardNo}</font><br>
			<font color="white" size="5px">Amount : &#X20B9; ${Amount}</font><br><br>
			<div>
			<font color="white" size="20px">
				<h2>${Info}</h2>
				</font>
			</div>


			<form action="${Target}success.bank">
				<input type="text" name="status" style="display: none;" value="${Value}">
				 <h4><input type="submit" class="btn btn-success"value="Complete Payment"></h4>
			</form>
			</div>
			</center>
		</div>
	</div>

</body>
</html>