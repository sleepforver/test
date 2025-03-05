<%--
  Created by IntelliJ IDEA.
  User: 赤
  Date: 21/10/2024
  Time: 下午4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="errorMahPage.jsp" %>
<html>
<%
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    double number1 =0;
    double number2 = 0;
    double sum = 0;
    double jian = 0;
    double cheng = 0;
    double chu = 0;

    try {
        if (num1 != null && num2 != null){
            number1 = Double.parseDouble(num1);
            number2 = Double.parseDouble(num2);

            sum = number1 + number2;
            jian = number1 - number2;
            cheng = number1 * number2;
            chu = number2 != 0 ? number1/number2 : Double.NaN;//除数为01处理

        }
    }catch (NumberFormatException e){
        throw new NumberFormatException("输入的数字不是有效数字。");
    }
%>
<head>
    <title>两数计算</title>
</head>
<body>
    <form method="get">
        <label for="num1">第一个数字：</label>
        <input type="text" id="num1" name="num1" value="<%=num1 != null ? num1 : ""%>"><br>
        <label for="num2">第二个数字：</label>
        <input type="text" id="num2" name="num2" value="<%=num2 != null ? num2 : ""%>"><br>
        <input type="submit" value="提交计算">
    </form>

    <% if (num1 != null && num2 != null) { %>

    <h3>输入的数字分别为：<%= num1%>,<%= num2%></h3>
    <h3>计算的结果为</h3>
    <p>加法：<%= sum%></p>
    <p>减法：<%= jian%></p>
    <p>乘法：<%= cheng%></p>
    <p>除法：<%= (chu == Double.NaN ? "除数不能为0" : chu )%></p>

    <% } %>

</body>
</html>
