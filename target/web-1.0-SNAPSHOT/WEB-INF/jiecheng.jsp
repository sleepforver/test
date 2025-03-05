<%--
  Created by IntelliJ IDEA.
  User: 赤
  Date: 14/10/2024
  Time: 下午12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 定义计算阶乘的方法
    public long factorial (int n) {
    long result = 1;
    for (int i = 1; i <= n; i++) {
    result *= i;
    }
    return result;
    }

    // 调用方法计算10!
    int number = 10;
    long result = factorial(number);
%>
<!DOCTYPE html>
<html>
<head>
    <title>计算10!</title>
</head>
<body>
<h1>10! 的计算结果</h1>
<p>10! = <%= result %></p>
</body>
</html>

