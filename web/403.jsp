<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String flag = (String) session.getAttribute("flag");
	if (flag == null || flag.equals("false")){
		response.sendRedirect("/login.jsp");
	}

%>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Kanrisha - A Premium HTML5 Responsive Admin Template</title>
	<!--[if lt IE 9]>
	<!--
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		-->
		<script src="Javascript/Flot/excanvas.js"></script>
	<![endif]-->
	<!-- The Fonts -->
	<link href="http://fonts.useso.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet" />
	<!-- The Main CSS File -->
	<link rel="stylesheet" href="CSS/style.css" />
	<!-- jQuery -->
	<script src="Javascript/jQuery/jquery-1.7.2.min.js"></script>
	<!-- Flot -->
	<script src="Javascript/Flot/jquery.flot.js"></script>
	<script src="Javascript/Flot/jquery.flot.resize.js"></script>
	<script src="Javascript/Flot/jquery.flot.pie.js"></script>
	<!-- DataTables -->
	<script src="Javascript/DataTables/jquery.dataTables.min.js"></script>
	<!-- ColResizable -->
	<script src="Javascript/ColResizable/colResizable-1.3.js"></script>
	<!-- jQuryUI -->
	<script src="Javascript/jQueryUI/jquery-ui-1.8.21.min.js"></script>
	<!-- Uniform -->
	<script src="Javascript/Uniform/jquery.uniform.js"></script>
	<!-- Tipsy -->
	<script src="Javascript/Tipsy/jquery.tipsy.js"></script>
	<!-- Elastic -->
	<script src="Javascript/Elastic/jquery.elastic.js"></script>
	<!-- ColorPicker -->
	<script src="Javascript/ColorPicker/colorpicker.js"></script>
	<!-- SuperTextarea -->
	<script src="Javascript/SuperTextarea/jquery.supertextarea.min.js"></script>
	<!-- UISpinner -->
	<script src="Javascript/UISpinner/ui.spinner.js"></script>
	<!-- MaskedInput -->
	<script src="Javascript/MaskedInput/jquery.maskedinput-1.3.js"></script>
	<!-- ClEditor -->
	<script src="Javascript/ClEditor/jquery.cleditor.js"></script>
	<!-- Full Calendar -->
	<script src="Javascript/FullCalendar/fullcalendar.js"></script>
	<!-- Color Box -->
	<script src="Javascript/ColorBox/jquery.colorbox.js"></script>
	<!-- Kanrisha Script -->
	<script src="Javascript/kanrisha.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	<!-- Top Panel -->
	<div class="top_panel">
		<div class="wrapper">
			<div class="user">
				<img src="Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
				<span class="label">John Alex</span>
				<!-- Top Tooltip -->
				<div class="top_tooltip">
					<div>
						<ul class="user_options">
							<li class="i_16_profile"><a href="#" title="Profile"></a></li>
							<li class="i_16_tasks"><a href="#" title="Tasks"></a></li>
							<li class="i_16_notes"><a href="#" title="Notes"></a></li>
							<li class="i_16_options"><a href="#" title="Options"></a></li>
							<li class="i_16_logout"><a href="#" title="Log-Out"></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="top_links">
				<ul>
					<li class="i_22_search search_icon">
						<div class="top_tooltip right_direction">
							<div>
								<form class="top_search_form" />
									<input type="text" class="top_search_input" />
									<input type="submit" class="top_search_submit" value="" />
								</form>
							</div>
						</div>
					</li>
					<li class="i_22_settings">
						<a href="#" title="Settings">
							<span class="label">Settings</span>
						</a>
					</li>
					<li class="i_22_upload">
						<a href="#" title="Upload">
							<span class="label">Upload</span>
						</a>
						<!-- Drop Menu -->
						<ul class="drop_menu menu_with_icons right_direction">
							<li>
								<a class="i_16_add" href="#" title="New Flie">
									<span class="label">New File</span>
								</a>									
							</li>
							<li>
								<a class="i_16_progress" href="#" title="2 Files Left">
									<span class="label">Files Left</span>
									<span class="small_count">2</span>
								</a>
							</li>
							<li>
								<a class="i_16_files" href="#" title="Browse Files">
									<span class="label">Browse Files</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="i_22_inbox top_inbox">
						<a href="#" title="Inbox">
							<span class="label lasCount">Inbox</span>
							<span class="small_count">3</span>
						</a>
					</li>
					<li class="i_22_pages">
						<a href="#" title="Pages">
							<span class="label">Pages</span>
						</a>
						<!-- Drop Menu -->
						<ul class="drop_menu menu_without_icons">
							<li>
								<a title="403 Page" href="403.jsp">
									<span class="label">403 Forbidden</span>
								</a>									
							</li>
							<li>
								<a href="404.jsp" title="404 Page">
									<span class="label">404 Not Found</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper contents_wrapper">
		<img src="Images/Pages/403.png" alt="403" class="pages" />
		<a href="index.jsp" class="goBack simple_buttons">Go Back To Home Page</a>
	</div>

	<footer>
		<div class="wrapper">
			<span class="copyright">
				&copy; Copyright &copy; 2013.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
			</span>
		</div>
	</footer>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>