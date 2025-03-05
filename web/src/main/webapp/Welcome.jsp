<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    Boolean loginOk = (Boolean) session.getAttribute("loginOk");
    String username = (String) session.getAttribute("username");
    if (loginOk == null || !loginOk){
        response.sendRedirect("loginOk");
        return;
    }
%>
<head>
    <title>欢迎您</title>
</head>
<body>
    <h1>欢迎您，<%= username%></h1><br>
    <a href="login.jsp">登出</a>
</body>
</html>
