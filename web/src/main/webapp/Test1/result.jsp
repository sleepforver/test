<%--
  Created by IntelliJ IDEA.
  User: 赤
  Date: 14/10/2024
  Time: 下午3:35
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%!
        //定义阶乘方法
        public long jiecheng(int n){
            if(n ==0 || n==1){
                return 1;
            }
            else{
                return n*jiecheng(n-1);
            }
        }
    %>


    <title>阶乘结果</title>

</head>
<body>
<%
    //调用方法
    long result = jiecheng(10);
    out.println("10!为：" + result);
%>

</body>

</html>