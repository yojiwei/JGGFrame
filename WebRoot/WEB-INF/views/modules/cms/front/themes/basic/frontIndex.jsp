<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>金桥政务</title>
<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content=" ${site.description}" />
	<meta name="keywords" content=" ${site.keywords}" />
</head>

<body>
	<div class="main">



		<!--中间-->
		<div class="con_div">
			<div class="con_d">
				<!--图片新闻、通知公告-->
				<div class="p_box">
					<div class="flash_box">
						<!-- 焦点图 -->
						<div class="focus" id="focus">
							<div class="normal-slider owl-carouse Slider-one Slider-index">
								<c:forEach
									items="${fnc:getArticleList(site.id, 'ddf968a6b4864b589150b68bc4a50eb0', 2, 'orderBy:\"createDate desc\"')}"
									var="article">
									<div class="item">
										<a href="${article.url}" title="${article.title}">
											<img class="p1" src="${article.image}"
											title="${fns:abbr(article.title,18)}" />
											<h4 class="title"
												style="height: 40px; line-height: 40px; color: #000; text-align: center; background: #d8d8d8;">
												<span>${fns:abbr(article.title,45)}</span>
											</h4>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>




					<div class="c_box box1">
						<div class="box1_con">
						<c:set var="article" value="${fnc:getArticle('c343b137b55141e1a5e77e05b60b887e')}"/>
							<p>${article.title}</p>
							<span>
								${fns:abbr(fns:replaceHtml(article.articleData.content),260)}<a
								href="${article.url}">查看详情</a>
							</span>
							
							<ul>
								<c:forEach
									items="${fnc:getArticleList(site.id, '3a94cdb7a9084b188c5c853b7fd40792', 12, 'orderBy:\"createDate desc\"')}"
									var="article">
									<li><a href="${article.url}" title="${article.title}">${fns:abbr(article.title,38)}</a>
									<p class="k">
											<fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd" />
										</p></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<!--腰带-->
				<div class="p_box">
					<img src="${ctxStatic}/images/ad2.jpg" />
				</div>

				<!--子栏目区域-->
				<div class="p_box">
					<div class="c_box box2">
						<div class="box_tit box2_tit">
							<img src="${ctxStatic}/images/dd2.png">
							<p>金桥要闻</p>
							<a href="${ctx}/list-2${urlSuffix}">更多 &gt;&gt;</a>
						</div>
						<ul>
							<c:forEach
								items="${fnc:getArticleList(site.id, '2', 8, 'orderBy:\"createDate desc\"')}"
								var="article">
								<li><a
									href="${article.url}"  title="${article.title}" style="color:${article.color}">${fns:abbr(article.title,24)}</a><p class="k"><fmt:formatDate
											value="${article.createDate}" pattern="yyyy-MM-dd" /></p></li>
							</c:forEach>
						</ul>
					</div>
					<div class="c_box box3">
						<script>
						<!--
							function setTabab(name, cursel, n) {
								for (i = 1; i <= n; i++) {
									var menu = document
											.getElementById(name + i);
									var con = document.getElementById("con_"
											+ name + "_" + i);
									menu.className = i == cursel ? "hover" : "";
									con.style.display = i == cursel ? "block"
											: "none";
								}
							}
						//-->
						</script>
						<div id="Tab1">
							<div class="Menubox">
								<ul>
									<li id="one1" onclick="setTabab('one',1,2)" class="hover">图片新闻</li>
									<li id="one2" onclick="setTabab('one',2,2)">小城镇建设</li>
								</ul>
							</div>
							<div class="Contentbox">
								<div id="con_one_1" class="hover">
									<img src="${ctxStatic}/images/bb1.jpg">
									<ul>
										<c:forEach
											items="${fnc:getArticleList(site.id, 'ddf968a6b4864b589150b68bc4a50eb0', 8, 'orderBy:\"createDate desc\"')}"
											var="article">
											<li><a href="${article.url}"  title="${article.title}"
												style="color:${article.color}">${fns:abbr(article.title,24)}</a><p class="k"><fmt:formatDate
											value="${article.createDate}" pattern="yyyy-MM-dd" /></p></li>
										</c:forEach>
									</ul>
								</div>
								<div id="con_one_2" style="display: none">

									<img src="${ctxStatic}/images/bb1.jpg">
									<ul>
										<c:forEach
											items="${fnc:getArticleList(site.id, 'b64ba29309b1472aa39ac10031efa3b8', 8, 'orderBy:\"createDate desc\"')}"
											var="article">
											<li><a href="${article.url}"  title="${article.title}"
												style="color:${article.color}">${fns:abbr(article.title,24)}</a><p class="k"><fmt:formatDate
											value="${article.createDate}" pattern="yyyy-MM-dd" /></p></li>
										</c:forEach>
									</ul>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!--子栏目区域-->
				<div class="p_box">
					<div class="c_box box4">
						<div class="box_tit box4_tit">
							<img src="${ctxStatic}/images/dd2.png">
							<p>金桥荣誉</p>
							<a
								href="${ctx}/list-66e5c9cc53ab45619f927d3d1dd5ade3${urlSuffix}">更多
								&gt;&gt;</a>
						</div>
						<div class="box4_con1">
							<img src="${ctxStatic}/images/bbb1.jpg">
							<ul>
								<c:forEach
									items="${fnc:getArticleList(site.id, '66e5c9cc53ab45619f927d3d1dd5ade3', 8, 'orderBy:\"createDate desc\"')}"
									var="article">
									<li><a  title="${article.title}"
										href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,35)}</a><p class="k"><fmt:formatDate
											value="${article.createDate}" pattern="yyyy-MM-dd" /></p></li>
								</c:forEach>
							</ul>
						</div>
						<div class="box4_con2">
							<img src="${ctxStatic}/images/bbb2.jpg">
							<ul>
								<c:forEach
									items="${fnc:getArticleList(site.id, '66e5c9cc53ab45619f927d3d1dd5ade3', 8, 'orderBy:\"createDate desc\"')}"
									var="article">
									<li><a  title="${article.title}"
										href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,35)}</a><p class="k"><fmt:formatDate
											value="${article.createDate}" pattern="yyyy-MM-dd" /></p></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="c_box box5">
						<div class="box_tit box4_tit">
							<img src="${ctxStatic}/images/dd2.png">
							<p>简报信息</p>
							<a
								href="${ctx}/list-ba4f2d0b04d74ef1a9923a85869f1b3c${urlSuffix}">更多
								&gt;&gt;</a>
						</div>
						<ul>
							<c:forEach
								items="${fnc:getArticleList(site.id, 'ba4f2d0b04d74ef1a9923a85869f1b3c', 8, 'orderBy:\"createDate desc\"')}"
								var="article">
								<li><a  title="${article.title}"
									href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,45)}</a><p class="k"><fmt:formatDate
											value="${article.createDate}" pattern="yyyy-MM-dd" /></p></li>
							</c:forEach>
						</ul>

					</div>
				</div>

				<script src="${ctxStaticTheme}/owl.carousel.min.js"></script>
				<script src="${ctxStaticTheme}/jquery.yx_rotaion.js"></script>
				<script>
					//轮播图
					$('.normal-slider').owlCarousel({
						items : 1,
						margin : 0,
						stagePadding : 0,
						smartSpeed : 1000,
						loop : true,
						autoplay : true,
						autoplayTimeout : 3000,
						autoplayHoverPause : true,
						nav : false
					});
				</script>


				<!--子栏目区域结束-->
			</div>
		</div>


<!-- 首页漂浮 -->
<!--float-->
    <div id="33" style="width:223px;height:135px;Z-INDEX: 1000;POSITION: absolute;display:;">
    
        <div style="cursor: pointer; z-index: 999999999; position: absolute; overflow: hidden; right: 1px;" onclick="my_float_div_hid(33)" title="关闭窗口">
            <img width="16px" height="16px" src="${ctxStatic}/images/close.png" />
        </div>
        <c:forEach items="${fnc:getLinkList(site.id, '5f4a81a6e07a4546bb51b9e278093246', 1, 'orderBy:\"createDate desc\"')}" var="link">
        <a href="${link.href}" target="_blank">
        <img src="${link.image}" border="0" /></a>
        &nbsp;&nbsp;
        </c:forEach>
        
    </div>
      <script type="text/javascript">
        var AdMoveConfig = new Object();
        AdMoveConfig.IsInitialized = false;

        AdMoveConfig.ScrollX = 0;
        AdMoveConfig.ScrollY = 0;
        AdMoveConfig.MoveWidth = 0;
        AdMoveConfig.MoveHeight = 0;
        AdMoveConfig.Resize = function () {
            var winsize = GetPageSize();
            AdMoveConfig.MoveWidth = winsize[2];
            AdMoveConfig.MoveHeight = winsize[3];
            AdMoveConfig.Scroll();
        }
        AdMoveConfig.Scroll = function () {
            var winscroll = getPageScroll();
            AdMoveConfig.ScrollX = winscroll[0];
            AdMoveConfig.ScrollY = winscroll[1];
        }
        addEvent(window, "resize", AdMoveConfig.Resize);
        addEvent(window, "scroll", AdMoveConfig.Scroll);
        function AdMove(id) {
            if (!AdMoveConfig.IsInitialized) {
                AdMoveConfig.Resize();
                AdMoveConfig.IsInitialized = true;
            }
            var obj = document.getElementById(id);
            //obj.style.position = "absolute";
            var W = AdMoveConfig.MoveWidth - obj.offsetWidth;
            var H = AdMoveConfig.MoveHeight - obj.offsetHeight;
            var x = W * Math.random(), y = H * Math.random();
            var rad = (Math.random() + 1) * Math.PI / 6;
            var kx = Math.sin(rad), ky = Math.cos(rad);
            var dirx = (Math.random() < 0.5 ? 1 : -1), diry = (Math.random() < 0.5 ? 1 : -1);
            var step = 1;
            var interval;
            this.SetLocation = function (vx, vy) { x = vx; y = vy; }
            this.SetDirection = function (vx, vy) { dirx = vx; diry = vy; }
            obj.CustomMethod = function () {
                obj.style.left = (x + AdMoveConfig.ScrollX) + "px";
                obj.style.top = (y + AdMoveConfig.ScrollY) + "px";
                rad = (Math.random() + 1) * Math.PI / 6;
                W = AdMoveConfig.MoveWidth - obj.offsetWidth;
                H = AdMoveConfig.MoveHeight - obj.offsetHeight;
                x = x + step * kx * dirx;
                if (x < 0) { dirx = 1; x = 0; kx = Math.sin(rad); ky = Math.cos(rad); }
                if (x > W) { dirx = -1; x = W; kx = Math.sin(rad); ky = Math.cos(rad); }
                y = y + step * ky * diry;
                if (y < 0) { diry = 1; y = 0; kx = Math.sin(rad); ky = Math.cos(rad); }
                if (y > H) { diry = -1; y = H; kx = Math.sin(rad); ky = Math.cos(rad); }
            }
            this.Run = function () {
                var delay = 10;
                interval = setInterval(obj.CustomMethod, delay);
                obj.onmouseover = function () { clearInterval(interval); }
                obj.onmouseout = function () { interval = setInterval(obj.CustomMethod, delay); }
            }
        }


        function addEvent(obj, evtType, func, cap) {
            cap = cap || false;
            if (obj.addEventListener) {
                obj.addEventListener(evtType, func, cap);
                return true;
            } else if (obj.attachEvent) {
                if (cap) {
                    obj.setCapture();
                    return true;
                } else {
                    return obj.attachEvent("on" + evtType, func);
                }
            } else {
                return false;
            }
        }
        function getPageScroll() {
            var xScroll, yScroll;
            if (self.pageXOffset) {
                xScroll = self.pageXOffset;
            } else if (document.documentElement && document.documentElement.scrollLeft) {
                xScroll = document.documentElement.scrollLeft;
            } else if (document.body) {
                xScroll = document.body.scrollLeft;
            }
            if (self.pageYOffset) {
                yScroll = self.pageYOffset;
            } else if (document.documentElement && document.documentElement.scrollTop) {
                yScroll = document.documentElement.scrollTop;
            } else if (document.body) {
                yScroll = document.body.scrollTop;
            }
            arrayPageScroll = new Array(xScroll, yScroll);
            return arrayPageScroll;
        }
        function GetPageSize() {
            var xScroll, yScroll;
            if (window.innerHeight && window.scrollMaxY) {
                xScroll = document.body.scrollWidth;
                yScroll = window.innerHeight + window.scrollMaxY;
            } else if (document.body.scrollHeight > document.body.offsetHeight) {
                xScroll = document.body.scrollWidth;
                yScroll = document.body.scrollHeight;
            } else {
                xScroll = document.body.offsetWidth;
                yScroll = document.body.offsetHeight;
            }
            var windowWidth, windowHeight;
            if (self.innerHeight) {
                windowWidth = self.innerWidth;
                windowHeight = self.innerHeight;
            } else if (document.documentElement && document.documentElement.clientHeight) {
                windowWidth = document.documentElement.clientWidth;
                windowHeight = document.documentElement.clientHeight;
            } else if (document.body) {
                windowWidth = document.body.clientWidth;
                windowHeight = document.body.clientHeight;
            }
            if (yScroll < windowHeight) {
                pageHeight = windowHeight;
            } else {
                pageHeight = yScroll;
            }
            if (xScroll < windowWidth) {
                pageWidth = windowWidth;
            } else {
                pageWidth = xScroll;
            }
            arrayPageSize = new Array(pageWidth, pageHeight, windowWidth, windowHeight)
            return arrayPageSize;
        }

        function setTab(name, cursel, n) {
            for (i = 1; i <= n; i++) {
                var menu = document.getElementById(name + i);
                var con = document.getElementById("con_" + name + "_" + i);
                var ggll = document.getElementById(name + "_" + i);

                menu.className = i == cursel ? "title_span" : "";
                con.style.display = i == cursel ? "block" : "none";
                ggll.style.display = i == cursel ? "block" : "none";
            }
        }

        function my_float_div_hid(hiddivid) {
            document.getElementById(hiddivid).style.display = 'none';
        }
    </script>

    <script type="text/javascript">


        var ad = new AdMove("33");
        ad.Run();

        function my_float_div_hid(hiddivid) {
            document.getElementById(hiddivid).style.display = 'none';
        }
    </script>
<!--首页漂浮-->




		<!-- 底部 -->
		<!--over-->
	</div>
</body>
</html>
