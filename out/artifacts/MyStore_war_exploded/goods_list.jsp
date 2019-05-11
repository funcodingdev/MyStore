<%@ page import="com.hasee.domain.Goods" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>码蚁商城</title>
    <!--链接外部样式-->
    <link rel="stylesheet" href="style/headerStyle.css">
    <!--设置标签图标-->
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="style/index.css">
    <link rel="stylesheet" href="style/footerStyle.css">
    <link rel="stylesheet" href="style/pageStyle.css">
</head>
<body>
<!--头部-->
<%@include file="header.jsp"%>
<!--热买商品-->
<div id="hot_goods">
    <h3 class="hot_goods_title">热卖商品</h3>
    <div class="hot_goods_body">
        <ul>

            <c:if test="${empty allGoods}">
                没有商品
            </c:if>

            <c:if test="${!empty allGoods}">
                <c:forEach var="pro" items="${allGoods}">
                    <li>
                        <a href="">
                            <img src="images/goods/${pro.image}" alt="">
                            <p>${pro.name}</p>
                            <i class="yuan">￥</i><span class="price">${pro.price}</span>
                        </a>
                    </li>
                </c:forEach>
            </c:if>

            <%--<%--%>
                <%--List<Goods> allGoods = (List<Goods>) request.getAttribute("allGoods");--%>
                <%--if(allGoods != null){--%>
                    <%--for(Goods pro:allGoods){--%>
                        <%--out.write("<li>");--%>
                        <%--out.write("<a href=\"\">");--%>
                        <%--out.write("<img src=\"images/goods/"+pro.getImage()+"\" alt=\"\">");--%>
                        <%--out.write("<p>"+pro.getName()+"</p>");--%>
                        <%--out.write("<i class=\"yuan\">￥</i><span class=\"price\">"+pro.getPrice()+"</span>");--%>
                        <%--out.write("</a>");--%>
                        <%--out.write("</li>");--%>
                    <%--}--%>
                <%--}else{--%>
                    <%--out.write("没有商品");--%>
                <%--}--%>
            <%--%>--%>



            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods_006.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods_007.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods_008.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods_009.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods10.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods11.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods12.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods13.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods14.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods_009.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods10.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods11.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods12.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods13.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="">--%>
                    <%--<img src="images/goods/goods14.png" alt="">--%>
                    <%--<p>小米（MI）小米净化器2智能家用卧室空气净化器除甲醛雾霾P</p>--%>
                    <%--<i class="yuan">￥</i><span class="price">599</span>--%>
                <%--</a>--%>
            <%--</li>--%>
        </ul>
    </div>
    <!--分页-->
    <div id="page" class="page_div"></div>
</div>

<%@include file="footer.jsp"%>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/paging.js"></script>
<script>
    //分页
    $("#page").paging({
        pageNo:5,
        totalPage: 10,
        totalSize: 300,
        callback: function(num) {
            alert(num);
        }
    })
</script>

</body>



</html>


