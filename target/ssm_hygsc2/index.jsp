<%@page contentType="text/html; charset=utf-8" language="java" isELIgnored="false"%>
<html>
<header>

    <title>好物购购物商城首页</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/imgapper.js" ></script>
    <script type="text/javascript">
        window.onload=function(){
            imgapper.scroll(4,"banner_list","list","banner_info");
        }
    </script>

    <style type="text/css">
        #banner {position: relative;width: 100%;height: 300px;border: 1px solid #666; overflow: hidden;}
        #banner_bg {position: absolute;top: 0px; background-color: #000;height: 27px;filter:Alpha(Opacity=30);opacity: 0.3;
            z-index: 1000;cursor: pointer;width:  100%;}
        #banner_info{position: absolute;bottom: 0px;left: 5px;line-height: 27px;color: #fff;z-index: 1001;}
        #banner ul{position: absolute;list-style-type: none;filter: Alpha(Opacity=75);opacity: 0.75;border: 1px solid #fff; z-index: 1002;margin: 0;padding: 0;
            bottom: 3px;right: 5px;}
        #banner ul li{padding: 0px 5px;float: left;display: block;color: #FFF;border: #fff thin solid;background-color: #666;cursor: pointer;}
        #banner ul li.on{background-color: #900;}
        #banner_list a{position: absolute;}
        a:hover{
            color: orangered;
        }



        footer{
            background-color: lightgreen;
            line-height: 35px;
        }
    </style>

</header>
<body>

<div id="sm" class="container">

    <ul class="nav row" style="height: 55px;padding: 5px;">
        <li class="col-lg-4 col-md-4 col-xs-4">
            <span class="h2">好物购购物商城</span>
        </li>
        <li class="col-lg-4 col-md-4 col-xs-4">


            <form action="" class="navbar-form">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="请输入搜索内容"/>
                    <span class="input-group-btn">
								  		<button class="btn btn-success" type="submit"><span class="glyphicon glyphicon-search">搜索</span></button>
								  		</span>
                </div>

            </form>

        </li>
        <li class="col-lg-4 col-md-4 col-xs-4">
            <p class="btn-group" style="margin-top: 10px;">
                <a class="btn" href="glylogin.jsp"><span class="glyphicon glyphicon-user">管理员登陆</span></a>
                <a class="btn" href="#"><span class="glyphicon glyphicon-shopping-cart">购物车</span></a>
                <a class="btn" href="#"><span class="glyphicon glyphicon-folder-open">收藏夹</span></a>
            </p>

        </li>

    </ul>

</div>

<nav id="header" class="navbar navbar-default navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">首页</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse"	 data-target="#example-navbar-collapse">
                <span class="sr-only">换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!--折叠的部分：导航条的头部-->
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a style="color: white;" href="#">手机</a></li>
                <li><a style="color: white;"  href="#">女装</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">食品</a></li>
                <li><a style="color: white;" class="dhtlj"href="#">运动</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">男装</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">家电</a></li>
                <li><a style="color: white;"class="dhtlj" href="#">百货</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">学习</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">影视</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">手表</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">乐器</a></li>
                <li><a style="color: white;" class="dhtlj" href="#">鲜花</a></li>
                <li class="active"><a style="color: white;" class="dhtlj" href="#" style="color: white;">宠物</a></li>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">美妆</a></li>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">餐具</a></li>
<%--                <li class="dropdown">--%>
<%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--                        热点排行 <b class="caret"></b></a>--%>
<%--                    <ul class="dropdown-menu">--%>
<%--                        <li><a href="#">江西菜</a></li>--%>
<%--                        <li><a href="#">湖南菜</a></li>--%>
<%--                        <li><a href="#">四川菜</a></li>--%>
<%--                        <li class="divider"></li><!--间隔线-->--%>
<%--                        <li><a href="#">江西菜</a></li>--%>
<%--                        <li><a href="#">湖南菜</a></li>--%>
<%--                        <li><a href="#">四川菜</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">保健</a></li>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">玩具</a></li>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">车品</a></li>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">数码</a></li>
                <li><a style="color: white;" class="dhtlj" href="#" style="color: white;">洗护</a></li>

            </ul>
        </div>




    </div>
</nav>

<!-- 轮播图 -->
<div id="banner">
    <div id="banner_bg"></div> <!--图像序号背景 -->
    <a href="#" id="banner_info"></a><!--图像序号 -->
    <ul id="list"></ul>
    <div id="banner_list">
        <a href="#" target="_blank"><img style="width: 100%;height: 300px;" src="image/lb1.png"  /></a>
        <a href="#" target="_blank"><img style="width: 100%;height: 300px;" src="image/lb2.png"  /></a>
        <a href="#" target="_blank"><img style="width: 1300px;height: 300px;"src="image/lb3.png"  /></a>
        <a href="#" target="_blank"><img style="width: 1300px;height: 300px;" src="image/lb4.png"  /></a>
    </div>

</div>

<div class="well">
    <ul class="nav row">
        <li class="nav col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h2 class="alert alert-warning" role="alert">当前热卖</h2>
            <!--缩略图：复杂，包括thumbnail和caption-->

            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" data-toggle="collapse" data-target="#t1">

                    <a href="#" class="thumbnail">
                        <img style="width:332px;height:330px" src="image/sp1.png">
                    </a>

                    <div class="caption collapse collapse in"id="t1">
                        <p class="text-center"><a href="#" class="text-success">【直播中特惠】蒙牛低脂高钙奶纯牛奶250ml*24盒/整箱很好喝牛奶</a></p>
                        <p><span style="color: orangered;font-size: 20px">￥55</span><span class=" pull-right" style="color: blue;">月销150笔</span></p>
                        <p><span style="color: orangered;font-size: 20px">蒙牛旗舰店</span><span class="pull-right" style="color: blue;">北京</span></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" data-toggle="collapse" data-target="#t2">
                    <a href="#" class="thumbnail">
                        <img style="width:332px;height:330px" src="image/sp2.png">
                    </a>
                    <div class="caption collapse collapse in"
                         id="t2">
                        <p class="text-center"><a href="#" class="text-success">2020新款少女学院风连衣裙夏季 公主小清新背带裙学生牛仔短裙子</a></p>
                        <p><span style="color: orangered;font-size: 20px">￥34</span><span class=" pull-right" style="color: blue;">月销135笔</span></p>
                        <p><span style="color: orangered;font-size: 20px">无道无理会这样尼</span><span class="pull-right" style="color: blue;">广东 广州</span></p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" data-toggle="collapse" data-target="#t3">
                    <a href="#" class="thumbnail">
                        <img style="width:332px;height:330px" src="image/sp3.png">
                    </a>
                    <div class="caption collapse collapse in"
                         id="t3">
                        <p class="text-center"><a href="#" class="text-success">统一汤达人方便面12杯整箱装杯装桶装速食泡面日式豚骨拉面小杯面</a></p>
                        <p><span style="color: orangered;font-size: 20px">￥55</span><span class=" pull-right" style="color: blue;">月销300笔</span></p>
                        <p><span style="color: orangered;font-size: 20px">研盛食品专营店</span><span class="pull-right" style="color: blue;">上海</span></p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" data-toggle="collapse" data-target="#t4">
                    <a href="#" class="thumbnail">
                        <img style="width:332px;height:330px" src="image/sp4.png">
                    </a>
                    <div class="caption collapse collapse in"
                         id="t4">
                        <p class="text-center"><a href="#" class="text-success">情侣装夏装连衣裙子韩版小众气质设计感一裙一衣海边度假一套装</a></p>
                        <p><span style="color: orangered;font-size: 20px">￥69</span><span class=" pull-right" style="color: blue;">月销130笔</span></p>
                        <p><span style="color: orangered;font-size: 20px">玫提斯旗舰店</span><span class="pull-right" style="color: blue;">浙江 杭州</span></p>
                    </div>
                </div>

            </div>
        </li>
    </ul>
</div>





    <h2 class="alert alert-success" role="alert">猜你喜欢</h2>
    <div class="nav row col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="media">
                <div class="media-left">
                    <img src="image/cn2.png" alt="" class="media-object">
                </div>
                <div class="media-body">

                    <h3 class="media-heading"><span style="color:red;">医用一次性三层口罩</span></h3>
                    <br>
                    <p class="text-warning" style="font-size: 18px;">原价: ￥<del>99.00-599.00</del></p>
                    <br />
                    <p class="text-info" style="font-size: 23px;color: orangered">促销价: ￥59.00-319.00</p>
                </div>
            </div>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="media">
                <div class="media-left">
                    <img src="image/cn4.png" alt="" class="media-object">
                </div>
                <div class="media-body">

                    <h3 class="media-heading"><span style="color:red;">520零食大礼包一箱</span></h3>
                    <br>
                    <p class="text-warning" style="font-size: 18px;">原价: ￥<del>99.00-599.00</del></p>
                    <br />
                    <p class="text-info" style="font-size: 23px;color: orangered">促销价: ￥59.00-319.00</p>
                </div>
            </div>
        </div>
    </div>



  <footer>
    <p class="text-info text-center" style="font-size: 18px;margin-top: 403px">常用工具 | 友情链接 | 联系我们</p>
    <p class="text-info  text-center" style="font-size: 18px;">适用版本：PC端、平板端、手机端</p>
    <p class="text-info  text-center" style="font-size: 18px;">版权所有:浙江省杭州市上城区紫阳街道秋涛路69号好物购购物商城所有</p>
</footer>
</body>
</html>
