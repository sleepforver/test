<%--
  Created by IntelliJ IDEA.
  User: 赤
  Date: 21/10/2024
  Time: 下午4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>计算错误处理</title>
</head>
<body>
    <h1>错误信息：<%=exception.getMessage()%></h1>
    <a href="jisaun.jsp">重新输入</a>
</body>
</html>
