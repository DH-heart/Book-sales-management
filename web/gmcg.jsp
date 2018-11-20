
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<title>Home</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/jquery-1.11.0.min.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link rel="stylesheet" href="css/a.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<link href='https://fonts.googleapis.com/css?family=Hind:400,300' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
		<script src="js/bootstrap.min.js"></script>
		<link href="css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
	</head>

	<body>
		<div class="banner1" id="home">
			<div class="container">
				<div class="banner-main wow bounceInDown" data-wow-delay="0.3s">
				</div>
			</div>
			<div id="ss1">
				<div style="padding: 100px 100px 10px;">
					<form class="bs-example bs-example-form" role="form">
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group">
									<input type="text" class="form-control">
									<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							搜索
						</button>
					</span>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="header">
			<div class="fixed-header">
				<div class="navbar-wrapper">
					<div class="container">
						<nav class="navbar navbar-inverse navbar-static-top">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			                <span class="sr-only">Toggle navigation</span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			                <span class="icon-bar"></span>
			              </button>
								<div id="cc" class="logo wow slideInLeft" data-wow-delay="0.3s">
									<a class="navbar-brand" href="index.html"><img src="images/logo-2.png" /></a>
								</div>
							</div>
							<div id="navbar" class="navbar-collapse collapse">
								<nav class="cl-effect-1">
									<ul class="nav navbar-nav">
										<li>
											<a href="/inedx">主页</a>
										</li>
										<li>
											<a href="/findall">成功/励志</a>
										</li>
										<li>
											<a href="/a">科技</a>
										</li>
										<li>
											<a href="/aa">历史</a>
										</li>
										<li>
											<a href="/aaa">小说</a>
										</li>
										<li>
											<a href="login.jsp">登录</a>
										</li>
										<li>
											<a href="/gmcg">${msg}</a>
										</li>
										<li>
											<a >${msga}</a>
										</li>
										<li>
											<a href="/logout">退出</a>
										</li>
									</ul>
								</nav>

							</div>

						</nav>
					</div>

				</div>
			</div>
		</div>

		<div class="row" >
			<div class="col-lg-3">
				
			</div>
			<div class="col-lg-6" id="dv3">
				<br>
				<h3 align="center"> 订单信息</h3>
				<table class="table">
					<tr>
						<td></td>
						<th>时间</th>
						<th>产品</th>
						<th>价格</th>
						<th>用户</th>
					</tr>
					<c:forEach items="${customers}" var="i">
						<tr id="Tr_ID">
							<td></td>
							<td>${i.uname}</td>
							<td>${i.name}</td>
							<td>${i.phone} </td>
							<td>${i.usname} </td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-lg-3">
			</div>
		</div>



		<!--footer -->
		<div class="copy-right">
			<div class="container">
				<div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
					<p>武汉软件工程职业学院 </p>
				</div>
			</div>
			<script type="text/javascript">
                $(document).ready(function() {
                    $().UItoTop({
                        easingType: 'easeOutQuart'
                    });

                });

                </body>

</html>