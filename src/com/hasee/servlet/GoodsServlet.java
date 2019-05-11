package com.hasee.servlet;

import com.hasee.domain.Goods;
import com.hasee.service.GoodsService;
import com.hasee.util.JDBCUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/GoodsServlet")
public class GoodsServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        List<Goods> allGoods = null;
        GoodsService goodsService = new GoodsService();
        allGoods = goodsService.findAllGoods();
        request.setAttribute("allGoods", allGoods);
        request.getRequestDispatcher("/goods_list.jsp").forward(request, response);
    }
}
