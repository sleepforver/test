<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    //声明计算阶乘的方法
    public static long factorial(int n){

    }
%>

<%
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

