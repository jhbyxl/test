<%--
  Created by IntelliJ IDEA.
  User: holle
  Date: 2020/5/13
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("BASE_PATH", request.getContextPath());
%>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>好易购商城后台管理员信息</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


           <script type="text/javascript">

               function getxx(uid,uname,upwd) {
                   alert(uid);
                   document.getElementById("uid2").value=uid;
                   document.getElementById("uname2").value=uname;
                   document.getElementById("upwd2").value=upwd;
               }

           function updateGly() {



               var uid=document.getElementById("ud2").value;
               var uname=document.getElementById("uname2").value;
               var price=document.getElementById("price2").value;

               if(confirm("确定要修改该序号为"+goodsid+"的管理员信息吗?")==true){

                   var url="${BASE_PATH}/updateGly";

                   $.post(url,{goodsid:goodsid,goodname:goodname,price:price},function (data,status) {
                       updateCallBack(data,status);
                   });
               }

           }

           function updateCallBack(data,status) {

               if("success"==status){
                   if("success"==status){
                       alert("修改成功！")
                       window.location.reload();
                   }else{
                       alert("修改失败！请联系管理员或重试")
                   }
               }
           }


           function deletegly(uid) {



               if (confirm("确定要删除序号为【"+uid+"】的管理员信息吗?")==true){

                   var url="${BASE_PATH}/deleteGly";

                   $.post(url,{uid:uid},function (data,status) {

                       deleteCallBack(data,status);
                   })
               }

               function deleteCallBack(data,status) {



                   if("success"==status){
                       if(data=="success"){
                           alert("删除成功！");
                           window.location.reload();
                       }else{
                           alert("删除失败！请联系管理员或重试")
                       }
                   }

               }




           }


       </script>



</head>
<body>
        <div style="text-align: center;margin-bottom: 30px;margin-top:20px;font-size:23px" class="alert alert-info" role="alert">好易购商城后台管理员信息</div>
              <p class="text-info text-center" style="font-size: 18px">管理员${sessionScope.gly.uname}:登陆成功!<a class="btn btn-primary btn-mini" href="glyLogout" onclick="return confirm('确认退出管理员${sessionScope.gly.uname}登录吗？')">退出登录</a></p>
        <div style="text-align: center;margin: 0;">
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9" >
                <table class="table table-hover"  align="center" border="1" cellspacing="0">
                    <caption class="text-warning" style="text-align: center;font-size: 23px">管理员信息表</caption>
                    <tr>
                        <td>管理员id</td>
                        <td>用户名</td>
                        <td>密码</td>
                        <td>编辑</td>
                        <td>删除</td>
                    </tr>

                    <c:forEach items="${pageInfo2.list}" var="g" varStatus="st">
                        <tr>
                            <td>${g.uid}</td>
                            <td>${g.uname}</td>
                            <td>${g.upwd}</td>
                            <td><button class="btn btn-info btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span><a  href="editGly?uid=${g.uid}">编辑</a></button></td>
                            <td><button class="btn btn-danger btn-sm" onclick="deletegly(${g.uid})">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span>删除</button></td>

                        </tr>
                    </c:forEach>

                </table>

                <div class="col-md-4">
                    第${pageInfo2.pageNum}页，共${pageInfo2.pages}页，共${pageInfo2.total}条记录
                </div>
                <div class="col-md-4 offset-md-4" style="text-align: right">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-sm">
                            <li class="page-item"><a class="page-link" href="${BASE_PATH}/listGly?page=1">首页</a></li>
                            <c:forEach items="${pageInfo2.navigatepageNums}" var="page">
                                <c:if test="${page==pageInfo2.pageNum}">
                                    <li class="page-item active"><a class="page-link" href="#">${page}</a></li>
                                </c:if>
                                <c:if test="${page!=pageInfo2.pageNum}">
                                    <li class="page-item"><a class="page-link"
                                                             href="${BASE_PATH}/listGly?page=${page}">${page}</a></li>
                                </c:if>
                            </c:forEach>
                            <c:if test="${pageInfo.hasNextPage}">
                                <li class="page-item"><a class="page-link"
                                                         href="${BASE_PATH}/listGly?page=${pageInfo2.pageNum+1}">下一页</a></li>
                            </c:if>
                            <li class="page-item"><a class="page-link" href="${BASE_PATH}/listGly?page=${pageInfo2.pages}">末页</a>
                            </li>
                        </ul>
                    </nav>
                </div>

            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-top: 40px">

                <a class="btn btn-info btn-large" style="margin-top: 88px"  href="listGoods">查看并管理商品信息</a>

            </div>
        </div>





        <div id="zc" class="modal" tabindex="-1">
            <!-- 窗口声明 -->
            <div class="modal-dialog">
                <div class="modal-content">
                <!-- 内容声明 -->
                    <!-- 头部 -->
                    <div class="modal-header">
                        <button type="button" class="close"
                                data-dismiss="modal"><!--data-dismiss退出、关闭某某窗口-->
                            <span>&times;</span><!--叉叉-->
                        </button>
                        <h4 class="modal-title">新增用户</h4>
                    </div>
                    <!-- 主体 -->
                    <div class="modal-body">
                        <!--表单+栅格系统-->
                        <form class="form-horizontal">
                            <div class="form-group row">
                                <label for="usr" class="control-label col-lg-2 col-md-2 col-sm-2 col-xs-2">用户名</label>
                                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                    <input id="usr" type="text" name="uname" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="pwd" class="control-label col-lg-2 col-md-2 col-sm-2 col-xs-2">密码</label>
                                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                    <input id="pwd" type="text" name="upwd" class="form-control"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- 注脚 -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning">
                            新增</button>
                        <button type="reset"  class="btn btn-info">
                            取消</button>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
