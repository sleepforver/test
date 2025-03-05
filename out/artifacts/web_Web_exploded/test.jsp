<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, com.bean.Student, com.dao.UserDao" %>

<html>
<head>
    <title>ѧ������</title>
</head>
<body>

<h1>ѧ����Ϣ����</h1>

<%-- ͨ��UserDao��ȡ����ѧ������ --%>
<%
    UserDao userDao = new UserDao();
    List<Student> students = userDao.getAllStudents();
    request.setAttribute("students", students);
%>

<%-- չʾ����ѧ����Ϣ --%>
<table border="1">
    <tr>
        <th>ID</th>
        <th>����</th>
        <th>����</th>
        <th>�Ա�</th>
        <th>רҵ</th>
        <th>����</th>
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
                <a href="deleteStudent?id=${student.id}">ɾ��</a> |
                <a href="updateStudent?id=${student.id}">����</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>

