//package servlet;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//
//@WebServlet(urlPatterns = "/servlet.LoginServlet")
//public class LoginServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String username = req.getParameter("username");
//        String password = req.getParameter("password");
//        String captcha = req.getParameter("captcha");
//
//        //验证验证码
//        HttpSession session = req.getSession();
//        String captcha1 = (String) session.getAttribute("captcha");
//        String username1 = (String) session.getAttribute("username");
//
//        //不考虑大小写
//        if (captcha == null || !captcha.equalsIgnoreCase(captcha1)){
//            System.out.println("验证码错误");
//            req.getRequestDispatcher("/login.jsp").forward(req,resp);
//        }
//
//        //进行用户名和密码校验
//        if ("admin".equals(username) && "123".equals(password)){
//            session.setAttribute("user",username);
//            resp.sendRedirect("admin.jsp");
//        } else if ("user".equals(username) && "123456".equals(password)) {
//            session.setAttribute("user",username);
//            resp.sendRedirect("user.jsp");
//        } else {
//            req.setAttribute("error","用户名或密码错误！");
//            req.getRequestDispatcher("/login.jsp").forward(req,resp);
//        }
//
//        if (username1 != null){
//            System.out.println("用户已在别处登录！");
//            req.getRequestDispatcher("/login.jsp").forward(req,resp);
//        }
//
//    }
//}