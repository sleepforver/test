<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, java.util.List"%>
<%
    List<String> cart = (List<String>) session.getAttribute("cart");
    String remove = request.getParameter("remove");

    // 从购物车中删除图书
    if (remove != null && cart != null) {
        cart.remove(remove);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
</head>
<body>
<h1>购物车</h1>
<ul>
    <%
        if (cart != null && !cart.isEmpty()) {
            for (String book : cart) {
    %>
    <li>
        <%= book %>
        <a href="?remove=<%= book %>">删除</a>
    </li>
    <%
        }
    } else {
    %>
    <li>购物车是空的。</li>
    <%
        }
    %>
</ul>

<a href="historyBook.jsp">历史图书区</a><br>
<a href="ComputerBook.jsp">计算机图书区</a>
</body>
</html>
