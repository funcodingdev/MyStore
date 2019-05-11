package com.hasee.service;

import com.hasee.dao.GoodsDao;
import com.hasee.domain.Goods;

import java.util.List;

public class GoodsService {

    public List<Goods> findAllGoods() {
        GoodsDao goodsDao = new GoodsDao();
        return goodsDao.findAllGoods();
    }
}
