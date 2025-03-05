<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<%
    // 存储生成的随机字母
    String letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    Random rand = new Random();

    // 从会话中获取随机字母
    String randomLetter = (String) session.getAttribute("randomLetter");

    // 如果用户选择重新开始游戏，清除随机字母
    String reset = request.getParameter("reset");
    if ("true".equals(reset)) {
        session.removeAttribute("randomLetter");
        randomLetter = String.valueOf(letters.charAt(rand.nextInt(letters.length())));
        session.setAttribute("randomLetter", randomLetter);
    }

    // 如果没有生成字母，则生成一个
    if (randomLetter == null) {
        randomLetter = String.valueOf(letters.charAt(rand.nextInt(letters.length())));
        session.setAttribute("randomLetter", randomLetter);
    }

    // 从请求中获取用户输入的字母
    String userGuess = request.getParameter("guess");
    String message = "";
    String hint = "";

    // 检查用户输入是否正确
    if (userGuess != null) {
        if (userGuess.length() == 1 && letters.indexOf(userGuess.toUpperCase()) != -1) {
            // 将用户输入转为大写
            char userChar = userGuess.toUpperCase().charAt(0);

            if (userChar == randomLetter.charAt(0)) {
                message = "恭喜你！你猜对了字母：" + randomLetter;
                // 猜对后清除随机字母
                session.removeAttribute("randomLetter");
            } else {
                hint = userChar < randomLetter.charAt(0) ? "小了" : "大了";
                message = "很遗憾，你猜错了！" + hint;
            }
        } else {
            message = "请输入一个有效的字母！";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>猜字母游戏</title>
</head>
<body>
<h1>猜字母游戏</h1>
<form method="post">
    <label for="guess">请输入一个字母：</label>
    <input type="text" id="guess" name="guess" maxlength="1" required>
    <input type="submit" value="猜">
</form>
随机生成的字母为:
<p><%= randomLetter%></p>
,仅为测试专用
<p><%= message %></p>
<form method="post" style="display:inline;">
    <input type="hidden" name="reset" value="true">
    <input type="submit" value="重新开始游戏">
</form>
</body>
</html>
