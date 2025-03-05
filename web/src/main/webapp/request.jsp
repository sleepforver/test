<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Request Information</title>
</head>
<body>
<p><strong>你的IP地址为:</strong> <%= request.getRemoteAddr() %></p>
<p><strong>你的主机名为:</strong> <%= request.getRemoteHost() %></p>
<p><strong>服务器端口号为:</strong> <%= request.getServerPort() %></p>
</body>
</html>
