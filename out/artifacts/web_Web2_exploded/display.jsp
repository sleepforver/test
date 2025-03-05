<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>学生信息展示</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>

<h2>学生信息展示</h2>
<table>
    <tr>
        <th>ID</th>
        <th>身份证号</th>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>出生日期</th>
    </tr>
    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // 数据库连接
            Class.forName("com.mysql.cj.jdbc.Driver"); // 确保使用适当的驱动
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBJsp", "root", "123456");
            stmt = conn.createStatement();
            String sql = "SELECT * FROM student";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("id");
                String pId = rs.getString("pId");
                String no = rs.getString("no");
                String name = rs.getString("name");
                String sex = rs.getString("sex");
                Timestamp birthdate = rs.getTimestamp("birthdate");

                out.println("<tr>");
                out.println("<td>" + id + "</td>");
                out.println("<td>" + pId + "</td>");
                out.println("<td>" + no + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + sex + "</td>");
                out.println("<td>" + birthdate + "</td>");
                out.println("</tr>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
</table>

</body>
</html>

