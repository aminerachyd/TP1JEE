<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Data Table | Notika - Notika Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon"
	href="admin/img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/bootstrap.min.css">
<!-- font awesome CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/font-awesome.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/owl.carousel.css">
<link rel="stylesheet" href="admin/css/owl.theme.css">
<link rel="stylesheet" href="admin/css/owl.transitions.css">
<!-- meanmenu CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/meanmenu/meanmenu.min.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/normalize.css">
<!-- wave CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/wave/waves.min.css">
<link rel="stylesheet" href="admin/css/wave/button.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet"
	href="admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- Notika icon CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/notika-custom-icon.css">
<!-- Data Table JS
		============================================ -->
<link rel="stylesheet" href="admin/css/jquery.dataTables.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/main.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" type="text/css" href="admin/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="admin/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="admin/js/vendor/modernizr-2.8.3.min.js"></script>
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
							<p>It's just that simple. Turn your simple table into a
								sophisticated data table and offer your users a nice experience
								and great features without any effort.</p>
						</div>
						<div class="table-responsive">
							<div class="dataTables_wrappe">
								<div id="data-table-basic_filter" class="dataTables_filter">
									<label> Search: <input type="text" class=""
										placeholder="Search" aria-controls="data-table-basic">
									</label>
								</div>
							</div>

							<table id="data-table-basic" class="table table-striped">
								<thead>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>
										<th>Age</th>
										<th>Start date</th>
										<th>Salary</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
									</tr>
									<tr>
										<td>Garrett Winters</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>63</td>
										<td>2011/07/25</td>
										<td>$170,750</td>
									</tr>
									<tr>
										<td>Ashton Cox</td>
										<td>Junior Technical Author</td>
										<td>San Francisco</td>
										<td>66</td>
										<td>2009/01/12</td>
										<td>$86,000</td>
									</tr>
									<tr>
										<td>Cedric Kelly</td>
										<td>Senior Javascript Developer</td>
										<td>Edinburgh</td>
										<td>22</td>
										<td>2012/03/29</td>
										<td>$433,060</td>
									</tr>
									<tr>
										<td>Airi Satou</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>33</td>
										<td>2008/11/28</td>
										<td>$162,700</td>
									</tr>
									<tr>
										<td>Brielle Williamson</td>
										<td>Integration Specialist</td>
										<td>New York</td>
										<td>61</td>
										<td>2012/12/02</td>
										<td>$372,000</td>
									</tr>
									<tr>
										<td>Herrod Chandler</td>
										<td>Sales Assistant</td>
										<td>San Francisco</td>
										<td>59</td>
										<td>2012/08/06</td>
										<td>$137,500</td>
									</tr>
									<tr>
										<td>Rhona Davidson</td>
										<td>Integration Specialist</td>
										<td>Tokyo</td>
										<td>55</td>
										<td>2010/10/14</td>
										<td>$327,900</td>
									</tr>
									<tr>
										<td>Colleen Hurst</td>
										<td>Javascript Developer</td>
										<td>San Francisco</td>
										<td>39</td>
										<td>2009/09/15</td>
										<td>$205,500</td>
									</tr>
									<tr>
										<td>Sonya Frost</td>
										<td>Software Engineer</td>
										<td>Edinburgh</td>
										<td>23</td>
										<td>2008/12/13</td>
										<td>$103,600</td>
									</tr>
									<tr>
										<td>Jena Gaines</td>
										<td>Office Manager</td>
										<td>London</td>
										<td>30</td>
										<td>2008/12/19</td>
										<td>$90,560</td>
									</tr>
									<tr>
										<td>Quinn Flynn</td>
										<td>Support Lead</td>
										<td>Edinburgh</td>
										<td>22</td>
										<td>2013/03/03</td>
										<td>$342,000</td>
									</tr>
									<tr>
										<td>Charde Marshall</td>
										<td>Regional Director</td>
										<td>San Francisco</td>
										<td>36</td>
										<td>2008/10/16</td>
										<td>$470,600</td>
									</tr>
									<tr>
										<td>Haley Kennedy</td>
										<td>Senior Marketing Designer</td>
										<td>London</td>
										<td>43</td>
										<td>2012/12/18</td>
										<td>$313,500</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Data Table area End-->

	<div>
		<h2>
			<c:out value="Test JSTL" />
		</h2>
	</div>
	<!-- jquery
		============================================ -->
	<script src="admin/js/vendor/jquery-1.12.4.min.js"></script>
	<!-- bootstrap JS
		============================================ -->
	<script src="admin/js/bootstrap.min.js"></script>
	<!-- wow JS
		============================================ -->
	<script src="admin/js/wow.min.js"></script>
	<!-- price-slider JS
		============================================ -->
	<script src="admin/js/jquery-price-slider.js"></script>
	<!-- owl.carousel JS
		============================================ -->
	<script src="admin/js/owl.carousel.min.js"></script>
	<!-- scrollUp JS
		============================================ -->
	<script src="admin/js/jquery.scrollUp.min.js"></script>
	<!-- meanmenu JS
		============================================ -->
	<script src="admin/js/meanmenu/jquery.meanmenu.js"></script>
	<!-- counterup JS
		============================================ -->
	<script src="admin/js/counterup/jquery.counterup.min.js"></script>
	<script src="admin/js/counterup/waypoints.min.js"></script>
	<script src="admin/js/counterup/counterup-active.js"></script>
	<!-- mCustomScrollbar JS
		============================================ -->
	<script src="admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- sparkline JS
		============================================ -->
	<script src="admin/js/sparkline/jquery.sparkline.min.js"></script>
	<script src="admin/js/sparkline/sparkline-active.js"></script>
	<!-- flot JS
		============================================ -->
	<script src="admin/js/flot/jquery.flot.js"></script>
	<script src="admin/js/flot/jquery.flot.resize.js"></script>
	<script src="admin/js/flot/flot-active.js"></script>
	<!-- knob JS
		============================================ -->
	<script src="admin/js/knob/jquery.knob.js"></script>
	<script src="admin/js/knob/jquery.appear.js"></script>
	<script src="admin/js/knob/knob-active.js"></script>
	<!--  Chat JS
		============================================ -->
	<script src="admin/js/chat/jquery.chat.js"></script>
	<!--  todo JS
		============================================ -->
	<script src="admin/js/todo/jquery.todo.js"></script>
	<!--  wave JS
		============================================ -->
	<script src="admin/js/wave/waves.min.js"></script>
	<script src="admin/js/wave/wave-active.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="admin/js/plugins.js"></script>
	<!-- Data Table JS
		============================================ -->

	<!-- main JS
		============================================ -->
	<script src="admin/js/main.js"></script>
	<!-- tawk chat JS
		============================================ -->
	<script src="admin/js/tawk-chat.js"></script>
</body>

</html>