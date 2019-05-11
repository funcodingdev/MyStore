<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>
    <!--链接外部样式-->
    <link rel="stylesheet" href="style/headerStyle.css">
    <!--设置标签图标-->
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="style/detail.css">
    <link rel="stylesheet" href="style/footerStyle.css">
</head>
<body>
<!--头部-->
<%@include file="header.jsp" %>


<!--面包屑导航-->
<div id="bread_crumb">
    <div class="bread_center">
        <a href="index.html">首页</a>
        <small>&gt</small>
        <a href="#">运动户外</a>
        <small>&gt</small>
        <a href="#">运动服饰</a>

    </div>
</div>

<!--详情展示-->
<div id="detail_show">
    <!--两个进行平分-->
    <div class="show_left">
        <img src="images/goods/bigPic.png" alt="">
    </div>
    <div class="show_right">
        <h3 class="good_name">小米 红米5A 全网通版 2GB+16GB 浅蓝色 移动联通电信4G手机 双卡双待</h3>
        <div class="goods_price">
            <p class="ori_price">原价：<i>￥</i><span>699.00</span><em></em></p>
            <p class="now_price">价格： <i>￥</i><span>599.00</span></p>
        </div>
        <div class="goods_count">
            <lable>购买数量</lable>
            <input type="text" value="1">
        </div>
        <div class="add_cart">
            <input type="submit" value="加入购物车">
        </div>
    </div>
</div>

<!--商品详情-->
<div id="goods_detail">
    <div class="detail_header">商品详情</div>
    <div class="detail_body">
        <img src="images/detail_pic1.png" alt="">
        <img src="images/detail_pic2.png" alt="">
    </div>
</div>


<!--尾部-->
<%@include file="footer.jsp" %>


</body>
</html>