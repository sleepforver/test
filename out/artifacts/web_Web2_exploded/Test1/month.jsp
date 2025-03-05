<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<html>
<head>
    <title>动态背景颜色</title>
    <style>
        body {
            color: white;
        }
    </style>
</head>
<body>

<%
    // 获取当前月份
    Calendar calendar = Calendar.getInstance();
    int month = calendar.get(Calendar.MONTH) + 1;
    String monthName;

    // 根据当前月份设置不同的背景颜色
    String backgroundColor;
    switch (month) {
        case 1: backgroundColor = "#FF5733"; // January - Red
            monthName = "一月";
            break;
        case 2: backgroundColor = "#33FF57"; // February - Green
            monthName = "二月";
            break;
        case 3: backgroundColor = "#3357FF"; // March - Blue
            monthName = "三月";
            break;
        case 4: backgroundColor = "#FFFF33"; // April - Yellow
            monthName = "四月";
            break;
        case 5: backgroundColor = "#FF33FF"; // May - Magenta
            monthName = "五月";
            break;
        case 6: backgroundColor = "#33FFFF"; // June - Cyan
            monthName = "六月";
            break;
        case 7: backgroundColor = "#FF8133"; // July - Orange
            monthName = "七月";
            break;
        case 8: backgroundColor = "#8133FF"; // August - Purple
            monthName = "八月";
            break;
        case 9: backgroundColor = "#33FF81"; // September - Light Green
            monthName = "九月";
            break;
        case 10: backgroundColor = "#FF3381"; // October - Pink
            monthName = "十月";
            break;
        case 11: backgroundColor = "#3381FF"; // November - Light Blue
            monthName = "十一月";
            break;
        case 12: backgroundColor = "#FF3333"; // December - Dark Red
            monthName = "十二月";
            break;
        default: backgroundColor = "#FFFFFF"; // Default to white
            monthName = "未知月份";
            break;
    }
%>

<!-- 设置背景颜色 -->
<div style="background-color: <%= backgroundColor %>; height: 100vh;">
    <h2>当前月份: <%= monthName %></h2>
    <h2>当前时间: <%= java.time.LocalDateTime.now().format(java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")) %></h2>
</div>

</body>
</html>
