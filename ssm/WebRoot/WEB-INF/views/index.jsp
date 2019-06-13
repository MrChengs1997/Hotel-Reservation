<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>

 <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">

    <!-- ========== SEO ========== -->
    <title>Home</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta content="" name="author">
    
    <!-- ========== FAVICON ========== -->
    <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png" />
	<link rel="icon" href="images/favicon.png">

    <!-- ========== STYLESHEETS ========== --> 
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="revolution/css/layers.css" rel="stylesheet" type="text/css" />
    <link href="revolution/css/settings.css" rel="stylesheet" type="text/css" />
    <link href="revolution/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css">
    <link href="css/animate.min.css" rel="stylesheet" type="text/css">
    <link href="css/famfamfam-flags.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="css/owl.carousel.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">

    <!-- ========== ICON FONTS ========== -->
    <link href="fonts/font-awesome.min.css" rel="stylesheet">
    <link href="fonts/flaticon.css" rel="stylesheet">
    
    <!-- ========== GOOGLE FONTS ========== -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900%7cRaleway:400,500,600,700" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    
    <!-- ========== PRELOADER ========== -->
    <div id="loading">
        <div class="inner">
            <div class="loading_effect">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>
            </div>
        </div>
    </div>
    
    <div class="wrapper">
        
        <!-- ========== TOP MENU ========== -->
        <div class="top_menu transparent hidden-xs">
            <div class="container">
                <ul class="top_menu_right">
                    <li><i class="fa  fa-phone"></i><a href="tel:18475555555"> 1-595-594-9273 </a></li>
                    <li class="email"><i class="fa  fa-envelope-o "></i> <a href="mailto:tourism@163.com">tourism@163.com</a></li>
                    <li class="email">尊敬的用户： ${user.getUsername()} ，欢迎登陆Zante Hotel!</li>
                </ul>
            </div>
        </div>
        
        <!-- ========== HEADER ========== -->
        <header class="fixed transparent">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle mobile_menu_btn" data-toggle="collapse" data-target=".mobile_menu" aria-expanded="false">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand light" href="index.html">
                        <img src="images/logo_light.svg" height="32" alt="Logo">
                    </a>
                    <a class="navbar-brand dark nodisplay" href="index.html">
                        <img src="images/logo.svg" height="32" alt="Logo">
                    </a>
                </div>
                <nav id="main_menu" class="mobile_menu navbar-collapse">
                    <ul class="nav navbar-nav">
						<li><a href="index.html">主页</a></li>
						<li><a href="about-us.html">关于我们</a></li>
						<li><a href="room.html">今日推荐</a></li>
						<li><a href="<%=request.getContextPath() %>/toList">房间列表</a></li>
                        <li><a href="contact.html">联系我们</a></li>
                        <li><a href="<%=request.getContextPath() %>/toroommsg?id=${userid}">个人中心</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <!-- ========== REVOLUTION SLIDER ========== -->
        <div id="hero" class="rev_slider gradient_slider" style="display:none">
            <ul>
                
                <li data-index="rs-214" 
                    data-delay="1000" 
                    data-transition="fade" 
                    data-slotamount="7" 
                    data-easein="default" 
                    data-easeout="default" 
                    data-masterspeed="100" 
                    data-rotate="0" 
                    data-saveperformance="off" 
                    data-title="Slide" 
                    data-description="">
                    <!-- IMAGE -->
                    <img src="images/slider/hero.jpg" alt="Image" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
                    <!-- LAYER NR. 1 --> 
                     <div class="tp-caption"
                         data-x="['left','left','left','center']" 
                         data-hoffset="['15','15','15','0']" 
                         data-y="['190','200','200','200']"
                         data-responsive_offset="on" 
                         data-fontsize="['40','28','28','22']" 
                         data-lineheight="['40','28','28','22']"
                         data-whitespace="nowrap"
                         data-frames='[{"delay":0,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                         style="color: #fff; font-weight: 700; font-family: 'Raleway', sans-serif;; ">WELCOME TO ZANTE, <span id="text_rotating">LIVE YOUR MYTH, MODERN ROOMS</span>
                    </div>
                    <!-- LAYER NR. 2 --> 
                    <div class="tp-caption tp_m_title"
                         data-visibility="['on','on','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['15','15','15','15']" 
                         data-y="['280','middle','middle','middle']" 
                         data-voffset="['-60','-60','-60','-60']" 
                         data-fontsize="['28','28','23','23']" 
                         data-lineheight="['28','28','23','23']" 
                         data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-star-o"></i>
                    </div>
                    <!-- LAYER NR. 3 --> 
                    <div class="tp-caption tp_m_title" 
                         data-visibility="['on','on','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['55','45','45','45']" 
                         data-y="['280','middle','middle','middle']" 
                         data-voffset="['-60','-60','-60','-60']" 
                         data-responsive_offset="on" 
                         data-fontsize="['28','28','23','23']" 
                         data-lineheight="['28','28','23','23']" 
                         data-frames='[{"delay":1150,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-star-o"></i>
                    </div>
                    <!-- LAYER NR. 4 --> 
                    <div class="tp-caption tp_m_title"
                         data-visibility="['on','on','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['95','75','75','75']" 
                         data-y="['280','middle','middle','middle']" 
                         data-voffset="['-60','-60','-60','-60']" 
                         data-responsive_offset="on" 
                         data-fontsize="['28','28','23','23']" 
                         data-lineheight="['28','28','23','23']"
                         data-frames='[{"delay":1300,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-star-o"></i>
                    </div>
                    <!-- LAYER NR. 5 --> 
                    <div class="tp-caption tp_m_title"
                         data-visibility="['on','on','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['135','105','105','105']" 
                         data-y="['280','middle','middle','middle']"
                         data-voffset="['-60','-60','-60','-60']" 
                         data-responsive_offset="on" 
                         data-fontsize="['28','28','23','23']" 
                         data-lineheight="['28','28','23','23']"
                         data-frames='[{"delay":1450,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-star-o"></i>
                    </div>
                    <!-- LAYER NR. 6 --> 
                    <div class="tp-caption tp_m_title" 
                         data-visibility="['on','on','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['175','135','135','135']" 
                         data-y="['280','middle','middle','middle']"
                         data-voffset="['-60','-60','-60','-60']" 
                         data-responsive_offset="on" 
                         data-fontsize="['28','28','23','23']"
                         data-lineheight="['28','28','23','23']"
                         data-frames='[{"delay":1600,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-star-o"></i>
                    </div>
                    <!-- LAYER NR. 7 --> 
                    <div class="tp-caption tp_m_title"
                         data-visibility="['on','on','off','off']"
                         data-x="left" 
                         data-hoffset="['215','175','175','175']" 
                         data-y="['280','middle','middle','middle']"
                         data-voffset="['-60','-60','-60','-60']" 
                         data-responsive_offset="on" 
                         data-fontsize="['30','30','25','25']" 
                         data-lineheight="['30','30','25','25']"
                         data-frames='[{"delay":1750,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'>Star Luxury Hotel
                    </div>
                    <!-- LAYER NR. 8 --> 
                    <div class="tp-caption tp_s_title"
                         data-visibility="['on','on','on','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['15','15','15','15']" 
                         data-y="['350','middle','top','top']"
                         data-voffset="['50','50','300','300']" 
                         data-responsive_offset="on" 
                         data-fontsize="['20','20','20','15']"
                         data-lineheight="['20','20','20','15']"
                         data-frames='[{"delay":2000,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-check-square-o"></i> 现代客房和宽敞的套房
                    </div>
                    <!-- LAYER NR. 9 --> 
                    <div class="tp-caption tp_s_title"
                         data-visibility="['on','on','on','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['15','15','15','15']" 
                         data-y="['400','middle','top','top']"
                         data-voffset="['80','100','350','350']" 
                         data-responsive_offset="on" 
                         data-fontsize="['20','20','20','15']"
                         data-lineheight="['20','20','20','15']" 
                         data-frames='[{"delay":2200,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-check-square-o"></i>美食体验
                    </div>
                    <!-- LAYER NR. 10 --> 
                    <div class="tp-caption tp_s_title"
                         data-visibility="['on','on','on','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['15','15','15','15']" 
                         data-y="['450','middle','top','top']"
                         data-voffset="['110','150','400','400']" 
                         data-responsive_offset="on" 
                         data-fontsize="['20','20','20','15']" 
                         data-lineheight="['20','20','20','15']"
                         data-frames='[{"delay":2400,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'><i class="fa fa-check-square-o"></i> 家庭套餐每晚90元起
                    </div>
                    <!-- LAYER NR. 11 --> 
                    <div class="tp-caption f_item"
                         data-visibility="['on','off','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['15','15','15','15']" 
                         data-y="['610','610','610','610']"
                         data-voffset=""
                         data-responsive_offset="on" 
                         data-frames='[{"delay":3000,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'>
                        <div class="icon_box">
                            <i class="fa fa-wifi"></i>
                        </div>
                        <div class="text_box">
                            免费WI-FI
                            <span>整个酒店免费使用</span>
                        </div>
                    </div>
                    <!-- LAYER NR. 12 -->
                    <div class="tp-caption f_item"
                         data-visibility="['on','off','off','off']"
                         data-x="['left','left','left','left']" 
                         data-hoffset="['265','265','265','265']" 
                         data-y="['610','610','610','610']"
                         data-voffset=""
                         data-responsive_offset="on" 
                         data-frames='[{"delay":3000,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'>
                        <div class="icon_box">
                            <i class="fa fa-television"></i>
                        </div>
                        <div class="text_box">
                            有线电视
                            <span>免费提供有线电视</span>
                        </div>
                    </div>
                    <!-- LAYER NR. 13 -->
                    <div class="tp-caption f_item"
                         data-visibility="['on','off','off','off']"
                         data-x="['left','left','none','left']" 
                         data-hoffset="['515','515','515','515']" 
                         data-y="['610','610','610','610']"
                         data-voffset=""
                         data-responsive_offset="on" 
                         data-frames='[{"delay":3000,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"}]'>
                        <div class="icon_box">
                            <i class="flaticon-tool"></i>
                        </div>
                        <div class="text_box">
                            餐厅
                            <span>提供酒吧和餐厅</span>
                        </div>
                    </div> 
       
                    <!-- LAYER NR. 15 --> 
                    <div class="tp-caption"
                         data-visibility="['on','on','off','off']"
                         data-x="['center','center','center','center']" 
                         data-hoffset="['0','0','0','0']" 
                         data-y="['bottom','bottom','bottom','bottom']" 
                         data-voffset="['20','20','20','20']" 
                         data-width="none" 
                         data-height="none" 
                         data-whitespace="nowrap" 
                         data-transform_idle="o:1;" 
                         data-transform_in="opacity:0;s:500;e:Power2.easeInOut;" 
                         data-transform_out="opacity:0;s:300;s:300;" 
                         data-start="8000" 
                         data-splitin="none" 
                         data-splitout="none" 
                         data-actions='[{"event":"click","action":"scrollbelow","offset":"px"}]' 
                         data-responsive_offset="on" 
                         data-startslide="0" 
                         data-endslide="2" 
                         style="z-index: 11; white-space: nowrap; font-size: 22px; line-height: 30px; font-weight: 400; color: rgba(245, 245, 245, 1.00);text-transform:left;cursor:pointer;">
                        <div class="rs-looped rs-slideloop" data-easing="Power2.easeInOut" data-speed="1" data-xs="0" data-xe="0" data-ys="-5" data-ye="5"><i class="fa fa-angle-down"></i></div>
                    </div>
                </li>
                
            </ul>
        </div>

        <!-- ========== FAVORITE ROOMS ========== -->
        <section class="white_bg" id="rooms">
            <div class="container">

                <div class="main_title mt_wave a_center">
                    <h2>最受欢迎预定的房间</h2>
                </div>
               
                <div class="row"> 
                        <div class="col-md-4">
                            <article class="room">
                                <figure>
                                    <div class="price"> ¥${house1.getPrice()} <span>/ night- 剩余${house1.getNumber()}间</span></div>
                                    <a class="hover_effect h_blue h_link" href="room.html">
                                        <img src="${house1.getImages()}" class="img-responsive" alt="Image">
                                    </a>
                                    <figcaption>
                                        <h4><a href="room.html">${house1.getHousename()}</a></h4>
                                        <span class="f_right"><a href="<%=request.getContextPath() %>/reserve/show?id=${house1.getId()}" class="button btn_sm btn_blue">马上预定</a></span>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <div class="col-md-4">
                            <article class="room">
                                <figure>
                                    <div class="price">¥${house2.getPrice()} <span>/ night - 剩余${house2.getNumber()}间</span></div>
                                    <a class="hover_effect h_blue h_link" href="room.html">
                                        <img src="${house2.getImages()}" class="img-responsive" alt="Image">
                                    </a>
                                    <figcaption>
                                        <h4><a href="room.html">${house2.getHousename()}</a></h4>
                                        <span class="f_right"><a href="<%=request.getContextPath() %>/reserve/show?id=${house2.getId()}" class="button btn_sm btn_blue">马上预定</a></span>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <div class="col-md-4">
                            <article class="room">
                                <figure>
                                    <div class="price">¥ ${house3.getPrice()} <span>/ night - 剩余${house3.getNumber()}间</span></div>
                                    <a class="hover_effect h_blue h_link" href="room.html">
                                        <img src="${house3.getImages()}" class="img-responsive" alt="Image">
                                    </a>
                                    <figcaption>
                                        <h4><a href="room.html">${house3.getHousename()}</a></h4>
                                        <span class="f_right"><a href="<%=request.getContextPath() %>/reserve/show?id=${house3.getId()}" class="button btn_sm btn_blue">马上预定</a></span>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                    </div>
                    <div class="mt40 a_center">
                        <a class="button btn_sm btn_yellow" href="<%=request.getContextPath() %>/toList">查看更多</a>
                    </div> 
            </div>
        </section>
            

        <!-- ========== CONTACT ========== -->
        <section class="white_bg" id="contact">
            <div class="container">
                <div class="main_title mt_wave a_center">
                    <h2>问题反馈</h2>
                </div>
                <p class="main_description a_center">您在入住时有任何想法都可以向我们反馈</p>
                
                <div class="row">
                    <div class="col-md-6">
                        <div id="map-canvas"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="contact-items">
                                <div class="col-md-4 col-sm-4">
                                    <div class="contact-item">
                                        <i class="glyphicon glyphicon-map-marker"></i>
                                        <h6>宿州市埇桥区朱仙庄镇</h6>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <div class="contact-item">
                                        <i class="glyphicon glyphicon-phone-alt"></i>
                                        <h6>1-595-594-9273</h6>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <div class="contact-item">
                                        <i class="fa fa-envelope"></i>
                                        <h6>tourism@163.com</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form id="contact-form" name="contact-form">
                            <div class="form-group">
                                <input class="form-control" name="name" placeholder="Your Name" type="text">
                            </div>
                            <div class="form-group">
                                <input class="form-control" name="email" type="email" placeholder="Your Email Address">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" placeholder="Your Message"></textarea>
                            </div>
                            <button class="button btn_lg btn_blue btn_full upper" type="submit"><i class="fa fa-location-arrow"></i>Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

            <!-- ========== FOOTER ========== -->
            <footer>
                <div class="inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6 widget">
                                <div class="about">
                                    <a href="index.html"><img class="logo" src="images/logo.svg" height="32" alt="Logo"></a>
                                    <p>我们的服务宗旨是：提供让您满意的服务！</p>
                                    <p>如有任何疑问可以咨询我们！</p>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 widget">
                                <h5>最新信息</h5>
                                <ul class="blog_posts">
                                    <li><a href="blog-post.html">可以免费进行入住的啦！</a> <small>3 13, 2019</small></li>
                                    <li><a href="blog-post.html">关于积分兑换问题</a> <small>3 14, 2019</small></li>
                                    <li><a href="blog-post.html">服务全面升级，等你来入住</a> <small>3 15, 2019</small></li>
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-6 widget">
                                <h5>相关链接</h5>
                                <ul class="useful_links">
                                    <li><a href="#">关于我们</a></li>
                                    <li><a href="#">联系我们</a></li>
                                    <li><a href="#">发展方向</a></li>
                                    <li><a href="#">画廊</a></li>
                                    <li><a href="#">地址</a></li>
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-6 widget">
                                <h5>联系我们</h5>
                                <address>
                                    <ul class="address_details">
                                        <li><i class="glyphicon glyphicon-map-marker"></i> 宿州市埇桥区朱仙庄镇</li>
                                        <li><i class="glyphicon glyphicon-phone-alt"></i> Phone: 800 123 3456 </li>
                                        <li><i class="fa fa-fax"></i> Fax: 800 123 3456</li>
                                        <li><i class="fa fa-envelope"></i> Email: <a href="mailto:tourism@163.com">tourism@163.com</a></li>
                                    </ul>
                                </address>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="subfooter">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="copyrights">
                                     Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="social_media">
                                    <a class="facebook" data-original-title="Facebook" data-toggle="tooltip" href="#"><i class="fa fa-facebook"></i></a>
                                    <a class="twitter" data-original-title="Twitter" data-toggle="tooltip" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="googleplus" data-original-title="Google Plus" data-toggle="tooltip" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="pinterest" data-original-title="Pinterest" data-toggle="tooltip" href="#"><i class="fa fa-pinterest"></i></a>
                                    <a class="linkedin" data-original-title="Linkedin" data-toggle="tooltip" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="instagram" data-original-title="Instagram" data-toggle="tooltip" href="#"><i class="fa fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            
        </div>
    
    <!-- ========== BACK TO TOP ========== -->
    <div id="back_to_top">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <!-- ========== NOTIFICATION ========== -->
    <div id="notification"></div>
     
    <!-- ========== JAVASCRIPT ========== -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!---<script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyBDgMJEPio2qomUKV1iqlIufj4u2NVd3q4"></script>--->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="js/jquery.smoothState.js"></script>
    <script type="text/javascript" src="js/moment.min.js"></script>
    <script type="text/javascript" src="js/morphext.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.thumbs.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/jPushMenu.js"></script>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/countUp.min.js"></script>
    <script type="text/javascript" src="js/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

    <!-- ========== REVOLUTION SLIDER ========== -->
    <script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>

</body>
</html>
