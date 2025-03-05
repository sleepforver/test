<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, com.bean.Student, com.dao.UserDao" %>

<html>
<head>
    <title>学生管理</title>
</head>
<body>

<h1>学生信息管理</h1>

<%-- 通过UserDao获取所有学生数据 --%>
<%
    UserDao userDao = new UserDao();
    List<Student> students = userDao.getAllStudents();
    request.setAttribute("students", students);
%>

<%-- 展示所有学生信息 --%>
<table border="1">
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
        <th>专业</th>
        <th>操作</th>
    </tr>
    <tbody>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>${student.gender}</td>
            <td>${student.major}</td>
            <td>
                <a href="deleteStudent?id=${student.id}">删除</a> |
                <a href="updateStudent?id=${student.id}">更新</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>

