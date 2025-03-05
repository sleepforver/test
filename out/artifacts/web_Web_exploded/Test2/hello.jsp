<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="errorHandler.jsp" %>
<html>
<head>
    <title>HELLO</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        if (name == null){
            throw new RuntimeException("没有指定name属性。");
        }
    %>
    Hello,<%=name%>
</body>
</html>
