<%--
  Created by IntelliJ IDEA.
  User: holle
  Date: 2020/5/16
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>管理员注册页面</title>
</head>

<%
    pageContext.setAttribute("BASE_PATH", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseUri" value="${pageContext.request.contextPath }"
       scope="request"></c:set>


<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${baseUri}/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript">

    $(document).ready(function() {
        var flag1 = false;
        var flag2 = false;
        var flag3 = false;


        $("#uname").focusout(function () {
            var uname = $("#uname").val().trim();
            if (uname == null || uname == "") {
                $("#uname_message").css("color", "red");
                $("#uname_message").text("输入用户名不能为空");
                flag1 = false;
                $("#register").attr("disabled", "disabled");
            } else {

                $.ajax({
                    url:"${baseUri}/checkGlyUname",
                    contentType:"application/json;charset=UTF-8",
                    type:"GET",
                    data:{uname:uname},
                    dataType:"JSON",
                   success:function(){

                        $("#uname_message").css("color","red");
                        $("#uname_message").text("该用户名已存在，请重新输入");
                        flag1=false;
                        $("#register").attr("disabled","disabled");
                    },
                   error: function () {

                        $("#uname_message").css("color", "blue");
                        $("#uname_message").text("用户名可以使用");
                        flag1 = true;

                        if (flag2 == true && flag3 == true) {
                            $("#register").removeAttr("disabled");
                        }
                    }
                });
            }

        });

        $("#upwd1").focusout(function () {

            var upwd=$("#upwd1").val().trim();
            if(upwd==null||upwd==""){
                $("#upwd1_message").css("color", "red");
                $("#upwd1_message").text("输入密码不能为空");
                flag2 = false;
                $("#register").attr("disabled","disabled");
            }else{
                 $("#upwd1_message").css("color", "blue");
                 $("#upwd1_message").text("可以使用");
                 flag2=true;
                if (flag1 == true && flag3 == true) {
                    $("#register").removeAttr("disabled");
                }

            }


        })


        $("#upwd2").focusout(function () {
            var upwd1 = $("#upwd1").val().trim();
            var upwd2 = $("#upwd2").val().trim();

            if(upwd1!=upwd2){
                $("#upwd2_message").css("color", "red");
                $("#upwd2_message").text("2次密码不一致");
                $("#register").attr("disabled","disabled");
                flag3=false;
            }else {
                $("#upwd2_message").css("color", "blue");
                $("#upwd2_message").text("2次密码一致");
                flag3=true;

                if(flag1==true&&flag2==true){
                    $("#register").removeAttr("disabled","disabled");
                }
            }

        });


    });




</script>
         <style type="text/css">
               body{

                   background-image:url("http://localhost:8080/ssm_hygsc_war_exploded/image/bjt3.jpg");
                   background-repeat: no-repeat;
                   background-size: cover;
               }


         </style>
<body>

<div style="padding: 100px 100px 10px;width:500px;margin: auto; ">
    <h2 style="text-align: center;margin-top: 10px">管理员注册界面</h2>
    <form  action="glyRegister" method="post" class="bs-example bs-example-form" role="form">
        <div class="form-group input-group-lg">
            <label>用户名：</label><label id="uname_message"></label>
            <i class="icon-user icon_font"></i>
            <input id="uname" required="required" type="text" name="uname" class="form-control" placeholder="请输入用户名">
        </div><br>
        <div class="form-group input-group-lg">
            <label>密 码：</label><label id="upwd1_message"></label>
            <input id="upwd1" required="required" type="password" name="upwd" class="form-control" placeholder="请输入密码">
        </div><br>

        <div class="form-group input-group-lg">
            <label>确认密码：</label><label id="upwd2_message"></label>
            <input id="upwd2" required="required" type="password" name="upwd2" class="form-control" placeholder="请输入密码">
        </div><br>
        <input id="register"  type="submit" value="注册" class="btn btn-info btn-lg btn-block">

    </form>


</div>

</body>
</html>
