package com.hasee.dao;

import com.hasee.domain.Goods;
import com.hasee.util.JDBCUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class GoodsDao {
    public List<Goods> findAllGoods() {
        QueryRunner qr = new QueryRunner(JDBCUtil.getDs());
        String sql = "select * from goods";
        List<Goods> allGoods = null;
        try {
            allGoods = qr.query(sql, new BeanListHandler<Goods>(Goods.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        System.out.println(allGoods);
        return allGoods;
    }
}
