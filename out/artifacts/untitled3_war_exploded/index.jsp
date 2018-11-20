<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/26
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="utf-8" />
<head>
    <title>Home</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/jquery-1.11.0.min.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href='https://fonts.googleapis.com/css?family=Hind:400,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
<div class="banner" id="home">
    <div class="container">
        <div class="banner-main wow bounceInDown" data-wow-delay="0.3s">
            <h1>发现更多精彩</h1>
            <span class="bann-line"> </span>
            <a href="#about" class="scroll"><span class="mover"> </span></a>
        </div>
    </div>
</div>

<div class="header">
    <div class="fixed-header">
        <div class="navbar-wrapper">
            <div class="container">
                <nav class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div  id="cc" class="logo wow slideInLeft" data-wow-delay="0.3s">
                            <a class="navbar-brand" href="index.jsp"><img src="images/logo-2.png" /></a>
                        </div>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <nav class="cl-effect-1">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="/inedx">主页</a>
                                </li>
                                <li>
                                    <a href="/findall">成功/励志</a>
                                </li>
                                <li>
                                    <a href="/a">科技</a>
                                </li>
                                <li>
                                    <a href="/aa">历史</a>
                                </li>
                                <li>
                                    <a href="/aaa">小说</a>
                                </li>
                                <li>
                                    <a href="login.jsp">登录</a>
                                </li>
                                <li>
                                    <a >${msg}</a>
                                </li>
                                <li>
                                    <a href="/gmcg">${msga}</a>
                                </li>
                                <li>
                                    <a href="/logout">退出</a>
                                </li>
                            </ul>
                        </nav>

                        <script>
                            $(document).ready(function() {
                                var navoffeset = $(".header").offset().top;
                                $(window).scroll(function() {
                                    var scrollpos = $(window).scrollTop();
                                    if(scrollpos >= navoffeset) {
                                        $(".header").addClass("fixed");
                                    } else {
                                        $(".header").removeClass("fixed");
                                    }
                                });

                            });
                        </script>
                    </div>

                </nav>
            </div>

        </div>
    </div>
</div>

<div class="about" id="about">
    <div class="container">
        <div class="about-main">
            <div class="about-top wow fadeInDown" data-wow-delay="0.3s">
                <h2>服务</h2>
                <span class="heading-line"> </span>
                <p>好的产品服务是基础</p>
            </div>
            <div class="about-bottom">
                <div class="col-md-6 about-left wow fadeInLeft" data-wow-delay="0.3s">
                    <h4>服务领域</h4>
                    <div class="about-grid">
                        <div class="about-icon">
                            <a href="#" class="#"> <span class="ab-badge"> </span> </a>
                        </div>
                        <div class="about-text">
                            <h5>运输</h5>
                            <p>我们已和各大主流快递公司合作，覆盖面积涵盖绝大多数城市。</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="about-grid">
                        <div class="about-icon">
                            <a href="#" class="#"> <span class="degr"> </span> </a>
                        </div>
                        <div class="about-text">
                            <h5>合作</h5>
                            <p>我们和各大出版社都有合作，都是以正规渠道购买的出版社所发售的书籍，品质有保证，我们承诺假一赔十。</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="about-grid">
                        <div class="about-icon">
                            <span class="learn"> </span>
                        </div>
                        <div class="about-text">
                            <h5>安全</h5>
                            <p>我们支持上门退货、当面退款，专业的售后服务！为顾客提供网上购物的高品质体验！ </p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-6 about-right wow fadeInRight" data-wow-delay="0.3s">
                    <img src="images/ab.jpg" class="img-responsive" alt="">
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>

<div class="ser-strip">
    <div class="container">
        <div class="ser-strip-main wow fadeInDown" data-wow-delay="0.3s">
            <h3>你有什么好的建议？</h3>
            <a href="#contact" class="scroll">告诉我们</a>
        </div>
    </div>
</div>

<div class="portfolio" id="portfolio">
    <div class="container">
        <div class="portfolio-top wow fadeInDown" data-wow-delay="0.3s">
            <h3>热销图书</h3>
            <span class="heading-line"> </span>

        </div>
        <div class="sap_tabs">
            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                <ul class="resp-tabs-list">
                    <li class="resp-tab-item" aria-controls="tab_item-0" role="tab">
                        <p>每日上新</p>
                    </li>
                </ul>
                <div class="resp-tabs-container">
                    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                        <div class="tab_img">
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-1">
                                        <figure class="effect-apollo">
                                            <img src="images/p1.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-1">
                                        <img src="images/p1.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>C程序设计语言</h3>
                                            <p>《C程序设计语言》原著 即为C语言的设计者Dennis M．Ritchie和著名的计算机科学家Brian W．Kernighan合著的 一本介绍C语言的权威经典著作。我们现在见到的大量论述C语言程序设计的教材和专著均以 此书为蓝本。原著第1版中介绍的C语言成为后来广泛使用的C语言版本—— 标准C的基础。</p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-2">
                                        <figure class="effect-apollo">
                                            <img src="images/p2.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-2">
                                        <img src="images/p2.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>Java从入门到精通</h3>
                                            <p>Java从入门到精通》是人民邮电出版社于 2010年出版的图书，由国家863中部软件孵化器主编。以零基础讲解为宗旨，深入浅出地讲解Java的各项技术及实战技能。本书从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细介绍了使用Java语言进行程序开发应该掌握的各方面技术。
                                            </p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-3">
                                        <figure class="effect-apollo">
                                            <img src="images/p3.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-3">
                                        <img src="images/p3.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>三体</h3>
                                            <p> 《三体》是刘慈欣创作的系列长篇科幻小说，由《三体》、《三体Ⅱ·黑暗森林》、《三体Ⅲ·死神永生》组成，第一部于2006年5月起在《科幻世界》杂志上连载，第二部于2008年5月首次出版，第三部则于2010年11月出版。 作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖
                                            </p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-4">
                                        <figure class="effect-apollo">
                                            <img src="images/p4.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-4">
                                        <img src="images/p4.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>昆虫记</h3>
                                            <p>《昆虫记》是法国昆虫学家、文学家让-亨利·卡西米尔·法布尔创作的长篇生物学著作，共十卷。 该作品记录了昆虫真实的生活，表述的是昆虫为生存而斗争时表现出的灵性，还记载着法布尔痴迷昆虫研究的动因、生平抱负、知识背景、生活状况等等内容。 [1] 作者将昆虫的多彩生活与自己的人生感悟融为一体，用人性去看待昆虫，字里行间都透露出作者对生命的尊敬与热爱
                                            </p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-5">
                                        <figure class="effect-apollo">
                                            <img src="images/p5.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-5">
                                        <img src="images/p5.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>明朝那些事儿</h3>
                                            <p>《明朝那些事儿》主要讲述的是从1344年到1644年这三百年间关于明朝的一些故事 [4] 。以史料为基础，以年代和具体人物为主线，并加入了小说的笔法，语言幽默风趣。 [5] 它以一种网络语言向读者娓娓道出明朝三百多年的历史故事、人物。其中原本在历史中陌生、模糊的历史人物在书中一个个变得鲜活起来。《明朝那些事儿》为读者解读历史中的另一面，让历史变成一部活生生的生活故事。
                                            </p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-6">
                                        <figure class="effect-apollo">
                                            <img src="images/p6.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-6">
                                        <img src="images/p6.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>大秦帝国</h3>
                                            <p>全书共分为六部《黑色裂变》《国命纵横》《金戈铁马》《阳谋春秋》《铁血文明》《帝国烽烟》。这部鸿篇巨著还原了巨大的历史落差与戏剧性的帝国命运，再现了一个国家一步步实现自己梦想的悲壮历程。书中每一行每一页都充满着智慧方略、阳谋政治的风骨，奋发惕励、强势生存的精神，充满着来自中国原生文明时代的英雄风骨与本色灵魂。</p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-7">
                                        <figure class="effect-apollo">
                                            <img src="images/p7.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-7">
                                        <img src="images/p7.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>清朝那些事儿</h3>
                                            <p>本书以时间为序，全方位地对清朝各个年代的政治、军事、制度、文化、艺术乃至礼仪、饮食文化等，作了全面详尽的解析，以正史为第一手材料，以小说的文本方式，详尽讲述了一个个短小却血脉清晰的故事。 通过一个个小故事，又分门别类地堆积起每个君王时代的逸闻秘史，系统、完整，塑成了一个个君王清晰立体的帝王生涯轮廓。局部文本貌似戏说，却有铁的史实为依据、 “靠山”。一个逝去时代的缤纷史实，无论宏大抑或卑琐，全都穿越时间的大幕而来，清晰逼真地呈现在读者的视域中。深刻而不失生活况味，轻松又携带着史料的真实面具
                                            </p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-8">
                                        <figure class="effect-apollo">
                                            <img src="images/p8.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-8">
                                        <img src="images/p8.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>富兰克林自传</h3>
                                            <p>《富兰克林自传》是美国传记文学的开山之作，而且还使自传成为一种全新的文学体裁。它是一部影响了几代美国人、历经两百余年经久不衰的励志奇书，它包含了人生奋斗与成功的真知灼见，以及诸种善与美的道德真谛，被公认为是改变了无数人命运的美国精神读本。</p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 img-top">
                                <div class="gal-one">
                                    <a href="#image-9">
                                        <figure class="effect-apollo">
                                            <img src="images/p9.jpg" alt="image1" class="img-responsive">
                                            <div class="link-top">
                                                <i class="link"> </i>
                                            </div>
                                        </figure>
                                    </a>
                                    <div class="lb-overlay" id="image-9">
                                        <img src="images/p9.jpg" alt="image1" class="img-responsive">
                                        <div class="gal-info">
                                            <h3>钢铁是怎样炼成的</h3>
                                            <p> 《钢铁是怎样炼成的》是前苏联作家尼古拉·奥斯特洛夫斯基所著的一部长篇小说，于1933年写成。讲述保 尼古拉·奥斯特洛夫斯基尔·柯察金从一个不懂事的少年到成为一个忠于革命的布尔什维克战士，再到双目失明却坚强不屈创作小说,成为一块坚强钢铁（是指他的精神）的故事。这是一部带有自传味道的小说，它赞扬了在绝望的命运中仍坚强不屈，向命运挑战的精神</p>
                                        </div>
                                        <a href="index.jsp" class="lb-close">离开</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--书架弹出-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true // 100% fit in a container
        });
    });
</script>

<div class="advantages">
    <div class="container">
        <div class="advantages-main">
            <h4>关于我们</h4>
            <div class="col-md-6 advantage-left wow fadeInLeft" data-wow-delay="0.3s">
                <p> 书呆子网拥有一支掌握了最前沿信息技术和熟悉现代企业管理的富有朝气的团队，并且已经树立了网上书店的一线品牌、积累了丰富的网站运营、管理经验。 成为网上购书的第一选择。拥有万种现货图书，基本包含了国内各大出版社的所有图书品种，馆里的图书可供品种最多的中文网上书店。我们还在不断地加强与图书出版商、发行商的合作，最大限度为读者提供最齐全而又准确的图书信息。
                </p>
            </div>
            <div class="col-md-6 advantage-rit wow fadeInRight" data-wow-delay="0.3s">
                <div class="advant-layer1">
                    <div class="adv-layer1-text">
                        <h6>解   答</h6>
                    </div>
                    <div class="advater-img">
                        <img src="images/s2.png" alt="">
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--contact start here-->
<div class="contact" id="contact">
    <div class="container">
        <div class="contact-main">
            <div class="contact-top wow fadeInDown" data-wow-delay="0.3s">
                <h3>我想说</h3>
                <span class="heading-line"> </span>
            </div>
            <div class="contact-bottom">
                <div class="col-md-6 contact-left wow fadeInLeft" data-wow-delay="0.3s">
                    <form>
                        <input type="text" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}">
                        <input type="text" value="邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}">
                        <textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '消息';}">消息</textarea>
                        <input type="submit" value="提交">
                    </form>
                </div>
                <div class="col-md-6 contact-right wow fadeInRight" data-wow-delay="0.3s">
                    <h4>联系方式</h4>
                    <p>张三</p>
                    <ul>
                        <li><span class="glyphicon glyphicon-map-marker" aria-hidden="true"> </span>武汉</li>
                        <li><span class="glyphicon glyphicon-phone" aria-hidden="true"> </span>+123456789</li>
                        <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"> </span>
                            <a href="mailto:info@example.com">@1518xxxx.com</a>
                        </li>
                    </ul>

                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<div id="k1">
</div>

<!--footer -->
<div class="copy-right">
    <div class="container">
        <div class="copy-rights-main wow zoomIn" data-wow-delay="0.3s">
            <p>武汉软件工程职业学院 </p>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>

</body>

</html>
