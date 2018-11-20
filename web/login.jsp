
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="app">

<head>
    <meta charset="utf-8" />
    <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/a.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>

<body id="bo1" >
<div id="dv2">
    <div id="dv1">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#yh" data-toggle="tab">用户登录</a>
            </li>
            <li>
                <a href="#gly" data-toggle="tab">管理员登陆</a>
            </li>
            <li>
                <a href="#zc" data-toggle="tab">注册</a>
            </li>

        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="yh"><br>
                <form action="/ma" method="post">
                    <div class="form-group">
                        <input type="username" name="username" placeholder="用户名" class="form-control  input-lg text-center no-border">
                    </div>
                    <div class="form-group">
                        <input type="password" name="psw" placeholder="密码" class="form-control  input-lg text-center no-border">
                    </div>

                    <button type="submit" class="btn btn-lg btn-danger lt b-white b-2x btn-block" id="validate-submit">
                        登录
                    </button>
                </form>
            </div>
            <div class="tab-pane fade" id="gly"><br>
                <form action="/findalll" method="post">
                    <div class="form-group">
                        <input type="username" name="username" placeholder="用户名" class="form-control  input-lg text-center no-border">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" placeholder="密码" class="form-control  input-lg text-center no-border">
                    </div>

                    <button type="submit" class="btn btn-lg btn-danger lt b-white b-2x btn-block" id="validate-submit">
                        登录
                    </button>
                </form>
            </div>
            <div class="tab-pane fade" id="zc"><br>
                <form action="/zhichi" method="post">
                    <div class="form-group">
                        <input type="username" name="username" placeholder="用户名" class="form-control  input-lg text-center no-border">
                    </div>
                    <div class="form-group">
                        <input type="password" name="psw" placeholder="密码" class="form-control  input-lg text-center no-border">
                    </div>

                    <button type="submit" class="btn btn-lg btn-danger lt b-white b-2x btn-block" id="validate-submit">
                        注册
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(function() {
        $('#myTab li:eq(1) a').tab('show');
    });
</script>

</body>

</html>