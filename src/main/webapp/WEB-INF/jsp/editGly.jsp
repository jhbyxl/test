<%--
  Created by IntelliJ IDEA.
  User: holle
  Date: 2020/5/14
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改管理员信息界面</title>

    <style type="text/css">

        body{
            background-image:url("http://localhost:8080/ssm_hygsc_war_exploded/image/2.jpg") ;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

</head>
<body>



    <div style="padding: 100px 100px 10px;width:500px;margin: auto ">
        <h2 style="text-align: center;margin-bottom: 23px">修改管理员信息界面</h2>
        <form  action="updateGly" method="post" class="bs-example bs-example-form" role="form">
            <div class="input-group input-group-lg">
                <span class="input-group-addon">用户名</span>
                <input type="text" value="${gly.uname}" name="uname" class="form-control" placeholder="请输入修改后管理员名称">
            </div><br>
            <div class="input-group input-group-lg">
                <span class="input-group-addon">密码</span>
                <input type="text" value="${gly.upwd}" name="upwd" class="form-control" placeholder="请输入修改后密码">
            </div><br>
            <input type="hidden" value="${gly.uid}" name="uid" class="form-control">
            <input type="submit" value="修改管理员信息" class="btn btn-info btn-lg btn-block">

        </form>
    </div>
<%--</div>--%>
</body>
</html>
