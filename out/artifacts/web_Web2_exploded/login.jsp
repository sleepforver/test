<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    <form action="LoginServlet" method="post">
        用户名:<input type="text" name="username" required><br>
        密码: <input type="password" name="password" required><br>
        验证码: <input type="text" name="captcha" required><br>
        <img src="CaptchaServlet" alt="验证码"><br>
        <input type="submit" value="登录">
    </form>

<%--    <%--%>
<%--        String user = "sa";--%>
<%--        String passwd = "123";--%>

<%--        String username = request.getParameter("username");--%>
<%--        String password = request.getParameter("password");--%>
<%--        Integer loginNum = (Integer) session.getAttribute("loginNum");--%>

<%--        if (loginNum == null){--%>
<%--            loginNum = 0;--%>
<%--        }--%>

<%--        if (username != null && password != null){--%>
<%--            if (loginNum >= 3){--%>
<%--                out.println("错误超过三次，无法再次进行登录");--%>
<%--            } else if (user.equals(username) && passwd.equals(password)) {--%>
<%--                session.setAttribute("loginOk",true);--%>
<%--                session.setAttribute("username",username);--%>
<%--                response.sendRedirect("Welcome.jsp");--%>
<%--            }else {--%>
<%--                loginNum++;--%>
<%--                session.setAttribute("loginNum",loginNum);--%>
<%--                out.println("登录失败，用户名或密码错误");--%>
<%--                out.println("<a href='login.jsp'>返回登录</a>");--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>
</body>
</html>
