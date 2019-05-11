package com.hasee.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;

@WebServlet("/AppServlet")
public class AppServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("AppServlet");
        //设置请求和响应的编码
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=utf-8");
        //获取请求数据
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line = "";
        while((line = reader.readLine()) != null){
            sb.append(line);
        }
        System.out.println(sb.toString());
    }
}
