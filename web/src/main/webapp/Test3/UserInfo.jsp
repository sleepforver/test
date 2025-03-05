<%--
  Created by IntelliJ IDEA.
  User: 赤
  Date: 21/10/2024
  Time: 下午5:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        request.setCharacterEncoding("UTF-8");
        String custName = request.getParameter("custName");
        String psw1 = request.getParameter("psw1");
        String sex = request.getParameter("sex");
        String[] interests = request.getParameterValues("interest");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String email = request.getParameter("email");

        int i = Integer.parseInt(province);
        String sheng;

        switch (i){
            case 0: sheng = "广东";
            break;
            case 1: sheng = "湖北";
            break;
            case 2: sheng = "湖南";
            break;
            case 3: sheng = "河北";
            break;
            case 4: sheng = "河南";
            break;
            default: sheng = "未知省份";
            break;
        }

    %>

    <title>用户注册信息</title>
</head>
<body>
    <p>用户名: <%= custName%></p><br>
    <p>密码: <%= psw1%></p><br>
    <p>性别: <%= sex%></p><br>
    <p>爱好: <%
        if (interests != null){
            for (String interest : interests) {
                out.println(interest);
            }
        }
    %></p><br>
    <p>你来自: <%=sheng%><%=city%></p><br>
    <p>邮箱: <%= email%></p><br>
</body>
</html>
