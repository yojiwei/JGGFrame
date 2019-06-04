<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content=" ${site.description}" />
	<meta name="keywords" content=" ${site.keywords}" />
</head>
<body>

    <div class="hero-unit" style="padding-bottom:35px;margin:10px 0;display:none;">
      <c:set var="article" value="${fnc:getArticle('c343b137b55141e1a5e77e05b60b887e')}"/>
      <h1>${fns:abbr(article.title,28)}</h1><p></p>
      <p>${fns:abbr(fns:replaceHtml(article.articleData.content),260)}</p>
      <p><a href="${article.url}" class="btn btn-primary btn-large">&nbsp;&nbsp;&nbsp;查看详情 &raquo;&nbsp;&nbsp;&nbsp;</a></p>
    </div>
    
    
    <div class="row">

      <div class="span8">
      <!-- 焦点图 -->
      <div class="focus" id="focus">
            <div class="normal-slider owl-carouse Slider-one Slider-index">
                <c:forEach items="${fnc:getArticleList(site.id, 'ddf968a6b4864b589150b68bc4a50eb0', 2, 'orderBy:\"createDate desc\"')}" var="article">
                <div class="item">
                    <a href="${article.url}" title="${fns:abbr(article.title,18)}">
                        <img class="p1" src="${article.image}" title="${fns:abbr(article.title,18)}" />
                        <h4 class="title" style=" height:40px; line-height:40px; color:#000; text-align:center; background:#d8d8d8;"><span>${fns:abbr(article.title,45)}</span></h4>
                    </a>
                </div>
               </c:forEach>
            </div>
  		</div>
      </div>
      
      
      <div class="span4">
        <h4> <small><a href="${ctx}/list-3a94cdb7a9084b188c5c853b7fd40792${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>通知公告</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, '3a94cdb7a9084b188c5c853b7fd40792', 12, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      
    </div>
    <!-- 腰带图片 -->
    <div class="row">
      <div class="span12">
		<img src="${ctxStatic}/images/ad2.jpg"/>
      </div>
    </div>
    
    <div class="row">
      <div class="span6">
        <h4><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>金桥要闻</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, '2', 8, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span6">
        <h4> <small><a href="${ctx}/list-ddf968a6b4864b589150b68bc4a50eb0${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>图片新闻</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 'ddf968a6b4864b589150b68bc4a50eb0', 8, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      
    </div>
    
    <div class="row">
    <div class="span6">
        <h4><small><a href="${ctx}/list-057861e44f7541b1bc8118d1ed3856d4${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>小城镇建设</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, '057861e44f7541b1bc8118d1ed3856d4', 8, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span6">
        <h4><small><a href="${ctx}/list-66e5c9cc53ab45619f927d3d1dd5ade3${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>金桥荣誉</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, '66e5c9cc53ab45619f927d3d1dd5ade3', 8, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,45)}</a></li>
		</c:forEach></ul>
      </div>
      
    </div>
    
    <div class="row">
      <div class="span6">
        <h4> <small><a href="${ctx}/list-ba4f2d0b04d74ef1a9923a85869f1b3c${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>信息简报</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 'ba4f2d0b04d74ef1a9923a85869f1b3c', 8, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,45)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span6">
        <h4> <small><a href="${ctx}/list-ab0f95237e484806b23d1151c40b9858${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>今日金桥</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 'ab0f95237e484806b23d1151c40b9858', 8, 'orderBy:\"createDate desc\"')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,45)}</a></li>
		</c:forEach></ul>
      </div>
    </div>
    
    
    
    
    
    
    
 <script src="${ctxStaticTheme}/owl.carousel.min.js"></script>
<script src="${ctxStaticTheme}/jquery.yx_rotaion.js"></script>
<script>
//轮播图
$('.normal-slider').owlCarousel({
items: 1,
margin: 0,
stagePadding: 0,
smartSpeed: 1000,
loop: true,
autoplay: true,
autoplayTimeout: 3000,
autoplayHoverPause: true,
nav: false
});
</script>
 
</body>
</html>