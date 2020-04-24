<%--
  Created by IntelliJ IDEA.
  User: 28309
  Date: 2020/3/20
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link href="style/common.css" type="text/css" rel="stylesheet">
    <link href="style/add.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="style/login.css">
    <script type="text/javascript">

    </script>
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
                        <p>用户注册</p>
                    </div>
                    <form id="regForm" enctype="multipart/form-data" onsubmit="return check()" class="login-table" action="" method="post">
                        <div class="login-left">
                            <label class="username">用户名&nbsp&nbsp&nbsp&nbsp</label>
                            <input type="text" id="username" class="yhmiput" name="user">
                        </div>
                        <div class="login-left">
                            <label class="username">密码&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                            <input type="password" id="password" class="yhmiput" name="pwd">
                        </div>
                        <div class="login-left">
                            <label class="username">确认密码</label>
                            <input type="password" id="repassword" class="yhmiput" name="repwd">
                        </div>
                        <div class="login-left">
                            <label class="username">上传头像</label>
                            <input type="file" class="yhmiput" name="file">
                        </div>
                        <div class="login-left">
                            <label class="username">验证码&nbsp&nbsp&nbsp&nbsp</label>
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
    <p><span>M-GALLARY</span> ©2017 POWERED BY IMOOC.INC</p>
</div>

</body>
</html>
