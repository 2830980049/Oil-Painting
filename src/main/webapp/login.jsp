<%--
  Created by IntelliJ IDEA.
  User: 28309
  Date: 2020/3/20
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <link href="style/common.css" type="text/css" rel="stylesheet">
    <link href="style/add.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="style/login.css">
</head>
<body>
<div class="header">
    <div class="logo f1">
        <img src="image/logo.png">
    </div>
    <div class="auth fr">
        <ul>
            <li><a href="#">登录</a></li>
            <li><a href="#">注册</a></li>
        </ul>
    </div>
</div>
<div class="content">
    <div class="center">
        <div class="center-login">
            <div class="login-banner">
                <a href="#"><img src="image/login_banner.png" alt=""></a>
            </div>
            <div class="user-login">
                <div class="user-box">
                    <div class="user-title">
                        <p>用户登录</p>
                    </div>
                    <form class="login-table">
                        <div class="login-left">
                            <label class="username">用户名</label>
                            <input type="text" class="yhmiput" name="user">
                        </div>
                        <div class="login-left">
                            <label class="username">密码&nbsp&nbsp&nbsp</label>
                            <input type="password" class="yhmiput" name="pwd">
                        </div>
                        <div class="login-left">
                            <label class="username">验证码</label>
                            <input type="text" class="codeiput" name="code">
                            <input type="text" class="codeiput" name="code">
                        </div>
                    </form>
                    <div class="login-btn"><button>登录</button></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">

</div>

</body>
</html>
