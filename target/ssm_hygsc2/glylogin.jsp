<%--
  Created by IntelliJ IDEA.
  User: holle
  Date: 2020/5/16
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录页面</title>
</head>

<%
    pageContext.setAttribute("BASE_PATH", request.getContextPath());
%>


<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body{
background-image:url("image/bjt.jpg");
background-repeat: no-repeat;
background-size: cover;
}
</style>
<body>



<div style="padding: 100px 100px 10px;width:500px;margin: auto; ">
    <h2 style="text-align: center;margin-bottom: 23px">管理员登录界面</h2>
    <form  action="${BASE_PATH}/glylogin" method="post" class="bs-example bs-example-form" role="form">
        <div class="input-group input-group-lg">
            <span class="input-group-addon">用户名</span>
            <input type="text" required="required" name="uname" class="form-control" placeholder="请输入用户名">
        </div><br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">密码</span>
            <input type="password" required="required" name="upwd" class="form-control" placeholder="请输入密码">
        </div><br>

        <label>
            还没有注册?去<a style="color: red" href="toGlyRegister">注册</a>一下
        </label>
        <br>
        <c:if test="${error !=null}">
          <span class="login_msg" style="font-size: 17px;color: orangered">${glyerror}</span>
        </c:if>
        <br>
        <input type="submit" value="登录" class="btn btn-info btn-lg btn-block">

    </form>

    <p class="text-center" style="margin-top: 20px"><a class="btn btn-primary btn-mini" href="index.jsp">返回首页</a></p>


</div>

</body>
</html>
