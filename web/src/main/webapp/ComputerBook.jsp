<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, java.util.List"%>
<%
    String url = "jdbc:mysql://localhost:3306/book_store"; // 数据库URL
    String user = "root"; // 数据库用户名
    String password = "123456"; // 数据库密码

    Connection conn = null;
    ResultSet rs = null;
    List<String> cart = (List<String>) session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }

    String purchase = request.getParameter("purchase");
    if (purchase != null) {
        cart.add(purchase);
    }

    List<String> computerBooks = new ArrayList<>();
    List<Double> computerPrices = new ArrayList<>();

    try {
        // 加载JDBC驱动
        Class.forName("com.mysql.cj.jdbc.Driver"); // 根据使用的数据库更改驱动类
        // 建立连接
        conn = DriverManager.getConnection(url, user, password);
        // 创建Statement对象
        Statement statement = conn.createStatement();
        String sql = "SELECT title, price FROM books WHERE category = 'computer'";
        PreparedStatement pstmt = conn.prepareStatement(sql);
         rs = pstmt.executeQuery();

        while (rs.next()) {
            computerBooks.add(rs.getString("title"));
            computerPrices.add(rs.getDouble("price"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>计算机图书</title>
</head>
<body>
<h1>计算机图书</h1>
<form method="post">
    <ul>
        <%
            for (int i = 0; i < computerBooks.size(); i++) {
        %>
        <li>
            <input type="checkbox" name="purchase" value="<%= computerBooks.get(i) %>">
            <%= computerBooks.get(i) %> - $<%= computerPrices.get(i) %>
        </li>
        <%
            }
        %>
    </ul>
    <input type="submit" value="购买">
</form>
<a href="cartList.jsp">显示购物车</a>
<br>
<a href="historyBook.jsp">历史图书区</a>
</body>
</html>
