<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ch">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="左右结构项目，属于大人员的社交工具">
		<meta name="keywords" content="左右结构项目 社交 占座 ">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta name="format-detection" content="telephone=no">

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script>
			$(function() {
				$(".meun-item").click(function() {
					$(".meun-item").removeClass("meun-item-active");
					$(this).addClass("meun-item-active");
					var itmeObj = $(".meun-item").find("img");
					itmeObj.each(function() {
						var items = $(this).attr("src");
						items = items.replace("_grey.png", ".png");
						items = items.replace(".png", "_grey.png")
						$(this).attr("src", items);
					});
					var attrObj = $(this).find("img").attr("src");;
					attrObj = attrObj.replace("_grey.png", ".png");
					$(this).find("img").attr("src", attrObj);
				});
				$("#topAD").click(function() {
					$("#topA").toggleClass(" glyphicon-triangle-right");
					$("#topA").toggleClass(" glyphicon-triangle-bottom");
				});
				$("#topBD").click(function() {
					$("#topB").toggleClass(" glyphicon-triangle-right");
					$("#topB").toggleClass(" glyphicon-triangle-bottom");
				});
				$("#topCD").click(function() {
					$("#topC").toggleClass(" glyphicon-triangle-right");
					$("#topC").toggleClass(" glyphicon-triangle-bottom");
				});
				$(".toggle-btn").click(function() {
					$("#leftMeun").toggleClass("show");
					$("#rightContent").toggleClass("pd0px");
				})
			})
		</script>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/slide.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
	</head>

	<body>
		<div id="wrap">
			<!-- 左侧菜单栏目块 -->
			<div class="leftMeun" id="leftMeun">
				<div id="logoDiv">
					<p id="logoP"><img id="logo" alt="左右结构项目" src="images/logo.png"><span>图书管理后台</span></p>
				</div>
				<div id="personInfor">
					<a href="/logout">安全退出</a> <a href="guanli.jsp">返回</a>
				</div>
				<div class="meun-title">管理后台</div>
				<div class="meun-item meun-item-active" href="#sour" aria-controls="sour" role="tab" data-toggle="tab"><img src="images/icon_source.png">图书修改</div>
			</div>
			<!-- 右侧具体内容栏目 -->
			<div id="rightContent">
				<a class="toggle-btn" id="nimei">
					<i class="glyphicon glyphicon-align-justify"></i>
				</a>
				<!-- Tab panes -->
				<div class="tab-content">
					<!-- 资源管理模块 -->
					<div role="tabpanel" class="tab-pane active" id="sour">
						<div class="check-div form-inline">

						</div>
						<div class="data-div">
							<div class="row tableHeader">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
									编码
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									名称
								</div>
								<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">

								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									操作
								</div>
							</div>
							
						</div>

						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<h4 class="modal-title" id="gridSystemModalLabel">订单信息</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<table class="table">

											<tr>
												<td></td>
												<th>时间</th>
												<th>产品</th>
												<th>价格</th>

											</tr>
											<c:forEach items="${customers}" var="i">
												<tr id="Tr_ID">
													<td></td>
													<td>${i.uname}</td>
													<td>${i.name}</td>
													<td>${i.phone} </td>

												</tr>
											</c:forEach>


										</table>

									</div>
								</div>
							</div>
						</div>





					</div>

				</div>

			</div>
			
		</div>	
					
	</body>

</html>