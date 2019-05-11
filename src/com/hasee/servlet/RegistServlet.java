package com.hasee.servlet;

import com.hasee.domain.User;
import com.hasee.util.JDBCUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("RegistServlet");
        //设置响应和请求的编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        //获取请求数据
        String code = request.getParameter("code");
        System.out.println(code);
        String checkCode = (String) this.getServletContext().getAttribute("checkCode");
        if(code.equals(checkCode)){
//            response.getWriter().write("验证码正确");
            //接收所有参数
            Map<String, String[]> parameterMap = request.getParameterMap();
            //封装成User对象
            User user = new User();
            try {
                BeanUtils.populate(user,parameterMap);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            user.setUid(UUID.randomUUID().toString());
            QueryRunner qr = new QueryRunner(JDBCUtil.getDs());
            String sql = "insert into user(uid,username,password,phone) values(?,?,?,?)";
            try {
                qr.update(sql,user.getUid(),user.getUsername(),user.getPassword(),user.getPhone());
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.getWriter().write("注册成功");
            response.setHeader("refresh","3;url=/MyStore/login.jsp");
        }else{//验证不正确
            response.getWriter().write("验证码错误");
            response.setHeader("refresh","3;url=/MyStore/regist.jsp");
        }
    }
}
