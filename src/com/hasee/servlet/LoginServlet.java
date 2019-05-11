package com.hasee.servlet;

import com.hasee.domain.User;
import com.hasee.util.JDBCUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        System.out.println(userName+":"+passWord);
        QueryRunner qr = new QueryRunner(JDBCUtil.getDs());
        String sql = "select * from user where username = ? and password = ?";
        User user = null;
        try {
            user = qr.query(sql,new BeanHandler<User>(User.class),userName,passWord);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(user != null){
            System.out.println("验证成功");
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            response.setHeader("refresh","3;url=/MyStore/index.jsp");
        }else{
            response.setHeader("refresh","3;url=/MyStore/login.jsp");
        }
    }
}
