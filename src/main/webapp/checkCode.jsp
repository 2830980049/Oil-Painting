<%--
  Created by IntelliJ IDEA.
  User: 28309
  Date: 2020/3/21
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/Check_Code_Check_Servlet" method="post">
        验证码：<input type="text" name="checkCode">
        <img id="img_id" onclick="changImg()" src="${pageContext.request.contextPath}/Check_Code_Servlet"><br/>
        <input type="submit" value="提交">
    </form>
    <script type="text/javascript">
        function changImg() {
            var codeImg = document.getElementById("img_id");
            codeImg.src = "${pageContext.request.contextPath}/Check_Code_Servlet?time=" + new Date().getTime();
        }
    </script>
</body>
</html>
