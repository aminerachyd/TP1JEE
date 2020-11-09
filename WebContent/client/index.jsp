<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact V7</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="client/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="client/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="client/css/util.css">
<link rel="stylesheet" type="text/css" href="client/css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title"> CONTACT US </span>

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<input class="input100" id="name" type="text" name="name"
						placeholder="Name"> <label class="label-input100"
						for="name"> <span class="lnr lnr-user"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Valid email is required: ex@abc.xyz">
					<input class="input100" id="email" type="text" name="email"
						placeholder="Email"> <label class="label-input100"
						for="email"> <span class="lnr lnr-envelope"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Phone is required">
					<input class="input100" id="phone" type="text" name="phone"
						placeholder="Phone"> <label class="label-input100"
						for="phone"> <span class="lnr lnr-phone-handset"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Message is required">
					<textarea class="input100" name="message"
						placeholder="Your message..."></textarea>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">Send us</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div>
		<h2>
			<c:out value="Test JSTL" />
		</h2>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="client/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="client/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="client/vendor/bootstrap/js/popper.js"></script>
	<script src="client/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="client/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="client/vendor/daterangepicker/moment.min.js"></script>
	<script src="client/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="client/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="client/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>