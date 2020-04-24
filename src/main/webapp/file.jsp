<%--
  Created by IntelliJ IDEA.
  User: 28309
  Date: 2020/3/20
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/UploadServlet" method="post" enctype="multipart/form-data">
        <input type="text" name="name"/><br/>
        <input type="file" name="upload"><br/>
        <input type="submit" value="上传">
    </form>
</body>
</html>
