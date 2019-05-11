<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎注册</title>
    <link rel="stylesheet" href="style/common.css">
    <link rel="stylesheet" href="style/regStyle.css">
    <!--设置标签图标-->
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="style/footerStyle.css">
</head>
<body>

<!--注册头部-->
<div id="reg_header">
    <div class="reg_h_center">

        <img src="images/logo.png" alt="">
        <h3>欢迎注册</h3>

        <div class="reg_h_right">
            <span>已有账户</span><a href="login.jsp">请登录</a>
        </div>
    </div>
</div>

<div id="reg_main">
    <div class="main_left">
        <form action="<%=request.getContextPath()%>/RegistServlet" id="reg_form" method="post">
            <div>
                <label>用户名</label>
                <input id="username" type="text" placeholder="请输入用户名" name="username">
            </div>
            <div>
                <label>密码</label>
                <input id="password" type="text" placeholder="请输入密码" name="password">
            </div>
            <div>
                <label>确认密码</label>
                <input id="password2" type="text" placeholder="请输入确认密码">
            </div>
            <div>
                <label>电话</label>
                <input type="text" placeholder="请输入电话" name="phone">
            </div>
            <div class="check_box">
                <label>验证码</label>
                <input type="text" name="code">
                <img src="<%=request.getContextPath()%>/CheckCodeServlet" onclick="change(this)">
            </div>
            <div class="submit_button">
                <input type="button" value="立即注册" onclick="checkData()">
            </div>
        </form>
    </div>
    <div class="main_right">
        <img src="images/reg_right.png" alt="">
    </div>
</div>
<!--尾部-->
<div id="footer">
    <!--关于我们-->
    <div class="link">
        <a href="#">关于我们</a>
        |
        <a href="#">联系我们</a>
        |
        <a href="#">人才招聘</a>
        |
        <a href="#">商家入驻</a>
        |
        <a href="#">广告服务</a>
        |
        <a href="#">手机码蚁</a>
        |
        <a href="#">友情链接</a>
        |
        <a href="#">销售联盟</a>
        |
        <a href="#">码蚁社区</a>
        |
        <a href="#">码蚁公益</a>
    </div>
    <!--版权-->
    <div class="copyright">
        Copyright&nbsp;&copy;&nbsp;2017-2018&nbsp;&nbsp;码蚁My.com&nbsp;版权所有
    </div>
</div>

<script type="text/javascript">
    function change(obj) {
        obj.src = "/MyStore/CheckCodeServlet?time=" + new Date().getTime();
    }

    function checkData() {
        var username = document.getElementById("username");
        var password = document.getElementById("password");
        var password2 = document.getElementById("password2");
        if(username.value == ""){
            alert("请输入用户名");
            return;
        }
        if(password.value == ""){
            alert("请输入密码");
            return;
        }
        if(password2.value == ""){
            alert("请重新输入密码");
            return;
        }
        if(password.value != password2.value){
            alert("两次密码不一样");
        }else{
            //发送请求
            var form = document.getElementById("reg_form");
            form.submit();
        }
    }
</script>

</body>
</html>


