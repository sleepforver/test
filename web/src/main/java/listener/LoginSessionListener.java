//package listener;
//
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.util.concurrent.ConcurrentHashMap;
//
//@WebListener
//public class LoginSessionListener implements HttpSessionAttributeListener {
//
//    // 存储每个用户的会话
//    private static final ConcurrentHashMap<String, HttpSession> activeSessions = new ConcurrentHashMap<>();
//
//    @Override
//    public void attributeAdded(HttpSessionBindingEvent event) {
//        // 当 session 属性被添加时触发
//        if ("username".equals(event.getName())) {
//            String username = (String) event.getValue();
//            HttpSession session = event.getSession();
//
//            // 如果该用户已经登录过，注销之前的会话
//            if (activeSessions.containsKey(username)) {
//                HttpSession oldSession = activeSessions.get(username);
//                if (oldSession != null && oldSession != session) {
//                    // 注销旧的会话
//                    oldSession.invalidate();
//                }
//            }
//
//            // 更新当前用户的会话
//            activeSessions.put(username, session);
//        }
//    }
//
//    @Override
//    public void attributeRemoved(HttpSessionBindingEvent event) {
//        // 当 session 属性被移除时触发
//        if ("username".equals(event.getName())) {
//            String username = (String) event.getValue();
//            // 移除用户的会话记录
//            activeSessions.remove(username);
//        }
//    }
//
//    @Override
//    public void attributeReplaced(HttpSessionBindingEvent event) {
//        // 当 session 属性被替换时触发
//        // 不需要处理用户名替换的情况，直接更新即可
//        if ("username".equals(event.getName())) {
//            String oldUsername = (String) event.getValue();
//            String newUsername = (String) event.getSession().getAttribute("username");
//
//            // 移除旧的用户名
//            activeSessions.remove(oldUsername);
//
//            // 将新的用户名和会话更新到存储中
//            activeSessions.put(newUsername, event.getSession());
//        }
//    }
//}
