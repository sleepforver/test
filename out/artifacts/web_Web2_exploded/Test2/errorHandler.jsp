<%--
  Created by IntelliJ IDEA.
  User: 赤
  Date: 21/10/2024
  Time: 下午4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>错误处理</title>
</head>
<body>
    请求不能被处理：<%=exception.getMessage()%><br>
    请重试！
</body>
</html>
