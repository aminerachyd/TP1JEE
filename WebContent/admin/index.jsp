<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Data Table | Notika - Notika Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- font awesome CSS
		============================================ -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.transitions.css">
<!-- meanmenu CSS
		============================================ -->
<link rel="stylesheet" href="css/meanmenu/meanmenu.min.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="css/normalize.css">
<!-- wave CSS
		============================================ -->
<link rel="stylesheet" href="css/wave/waves.min.css">
<link rel="stylesheet" href="css/wave/button.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet"
	href="css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- Notika icon CSS
		============================================ -->
<link rel="stylesheet" href="css/notika-custom-icon.css">
<!-- Data Table JS
		============================================ -->
<link rel="stylesheet" href="css/jquery.dataTables.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="css/main.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!-- Data Table area Start-->
	<div class="data-table-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="data-table-list">
						<div class="basic-tb-hd">
							<h2>Basic Example</h2>
							<p id="error" style="color: red"></p>
						</div>
						<div class="table-responsive">
							<div class="dataTables_wrappe">
								<div id="data-table-basic_filter" class="dataTables_filter">
									<label> Search: <input type="text" class=""
										placeholder="Search" aria-controls="data-table-basic"
										onkeyup="doSearch(event)">
									</label>
								</div>
							</div>
							<table id="data-table-basic" class="table table-striped">
								<thead>
									<tr>
										<th>Name</th>
										<th>Email</th>
										<th>Phone Number</th>
										<th>Message</th>
									</tr>
								</thead>
								<tbody id="tab-body">
									<c:forEach items="${requests}"
										var="requestItem">
										<tr>
											<td><c:out value="${requestItem.name}"></c:out></td>
											<td><c:out value="${requestItem.email}"></c:out></td>
											<td><c:out value="${requestItem.phone}"></c:out></td>
											<td><c:out value="${requestItem.message}"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Data Table area End-->

	<!-- jquery
		============================================ -->
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<!-- bootstrap JS
		============================================ -->
	<script src="js/bootstrap.min.js"></script>
	<!-- wow JS
		============================================ -->
	<script src="js/wow.min.js"></script>
	<!-- price-slider JS
		============================================ -->
	<script src="js/jquery-price-slider.js"></script>
	<!-- owl.carousel JS
		============================================ -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- scrollUp JS
		============================================ -->
	<script src="js/jquery.scrollUp.min.js"></script>
	<!-- meanmenu JS
		============================================ -->
	<script src="js/meanmenu/jquery.meanmenu.js"></script>
	<!-- counterup JS
		============================================ -->
	<script src="js/counterup/jquery.counterup.min.js"></script>
	<script src="js/counterup/waypoints.min.js"></script>
	<script src="js/counterup/counterup-active.js"></script>
	<!-- mCustomScrollbar JS
		============================================ -->
	<script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- sparkline JS
		============================================ -->
	<script src="js/sparkline/jquery.sparkline.min.js"></script>
	<script src="js/sparkline/sparkline-active.js"></script>
	<!-- flot JS
		============================================ -->
	<script src="js/flot/jquery.flot.js"></script>
	<script src="js/flot/jquery.flot.resize.js"></script>
	<script src="js/flot/flot-active.js"></script>
	<!-- knob JS
		============================================ -->
	<script src="js/knob/jquery.knob.js"></script>
	<script src="js/knob/jquery.appear.js"></script>
	<script src="js/knob/knob-active.js"></script>
	<!--  Chat JS
		============================================ -->
	<script src="js/chat/jquery.chat.js"></script>
	<!--  todo JS
		============================================ -->
	<script src="js/todo/jquery.todo.js"></script>
	<!--  wave JS
		============================================ -->
	<script src="js/wave/waves.min.js"></script>
	<script src="js/wave/wave-active.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="js/plugins.js"></script>
	<!-- Data Table JS
		============================================ -->

	<!-- main JS
		============================================ -->
	<script src="js/main.js"></script>
	<!-- tawk chat JS
		============================================ -->
	<script src="js/tawk-chat.js"></script>

	<script>
	    let errorElement = document.getElementById('error');
		let bodyElement = document.getElementById('tab-body');
		function doSearch(event){
			// Fonction appelée lors qu'un caractère est saisie dans la barre
			// de recherche
			let text = event.currentTarget.value;
			errorElement.innerText = "";
			// Si le texte est assez grand (au moins 3 caracteres) on lance le filtrage
			if (text.length > 2){
				askServer(text);
			}
			// Sinon s'il n'y a plus de texte dans la barre on recupère toutes les demandes
			else if (text.length == 0) {
				askServer("");
			}
		}
		function askServer(text){
			// Fonction qui permet de recupérer les données aupres du serveur
			fetch('list',{
				method: "POST",
				body: 'name='+text,
				headers: { 'Content-type': 'application/x-www-form-urlencoded' }
			  }).then(function(response){
						if (response.status != 200){
							reject(response);
						}
						return response.text();
					}).then(function(responseText){
						bodyElement.innerHTML = responseText;
					}).catch(function(error){
						errorElement.innerText = "Error with server";
					});
		}
    </script>
</body>

</html>