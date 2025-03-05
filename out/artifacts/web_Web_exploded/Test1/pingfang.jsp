<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>计算平方</title>
</head>
<body>

<%
    // 获取请求参数
    String numberStr = request.getParameter("number");
    if (numberStr != null) {
        try {
            int number = Integer.parseInt(numberStr);
            int square = number * number;
%>
<h2><%= number %> 的平方是: <%= square %></h2>
<%
} catch (NumberFormatException e) {
%>
<h2>无效的数字</h2>
<%
    }
} else {
%>
<h2>请点击上面的链接查看平方结果。</h2>
<%
    }
%>

<hr/>

<!-- 显示 1-9 的链接 -->
<div>
    <%
        for (int i = 1; i <= 9; i++) {
    %>
    <a href="?number=<%= i %>"><%= i %></a>&nbsp;
    <%
        }
    %>
</div>
</body>
</html>
