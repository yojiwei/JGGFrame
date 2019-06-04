<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title default="欢迎光临" /></title>
<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp"%>
<!-- head -->

<!-- Baidu tongji analytics -->
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
<sitemesh:head />
</head>
<body>

	<div class="navbar navbar-fixed-top"
		style="position: static; margin-bottom: 10px;">
		<div class="navbar-inner">
	<!--头部、导航-->
	<div class="big_top">
		<div class="t_top">
			<p class="p1">欢迎来到金桥政务网！</p><p class="p1">${fns:getDate('yyyy年MM月dd日 E')}</p>
			<p class="p2">
				<script type="text/javascript" src="http://www.shanghai.gov.cn/shanghai/weather.js"></script>
			</p>
		</div>
		<img src="${ctxStatic}/images/top_banner.jpg" />
		<div class="menu_div">
			<a href="../f" class="select">首 页</a>
			<c:forEach items="${fnc:getMainNavList(site.id)}" var="category"
				varStatus="status">
				<c:if test="${status.index lt 7}">
					<c:set var="menuCategoryId" value=",${category.id}," />
					<a href="${category.url}" target="${category.target}"><span>${category.name}</span></a>
				</c:if>
			</c:forEach>
		</div>
	</div>
	
	<!--/.nav-collapse -->
		</div>
	</div>




	<!--中间-->
	<div class="container">
		<div class="content">
			<sitemesh:body />
		</div>
		
		
		<hr style="margin: 20px 0 10px;">



		<!--底部-->
		<footer>
		<div class="foot_div">
			<div class="foot_div2">
				<div class="foot_d">
					<a href="http://pdxtbg.pudong.sh" class="f_tit f1"><img
						src="${ctxStatic}/images/b_b1.png">
					<p>金桥OA</p></a> <a href="http://172.30.208.4:8001/" class="f_tit f2"><img
						src="${ctxStatic}/images/b_b2.png">
					<p>用友财务</p></a> <a href="http://www.pudong.gov.cn" class="f_tit f3"><img
						src="${ctxStatic}/images/b_b3.png">
					<p>浦东门户</p></a> <a href="http://www.pudong.gov.cn/jqz/"
						class="f_tit f4"><img src="${ctxStatic}/images/b_b4.png">
					<p>金桥门户</p></a> <a
						href="${pageContext.request.contextPath}${fns:getAdminPath()}"
						class="f_tit f7"><img src="${ctxStatic}/images/b_b7.png">
					<p>后台管理</p></a>
				</div>
			</div>

			<p class="f_zh">
				版权所有 @ 2005.2013 上海市浦东新区金桥镇人民政府<br> 地址：上海浦东新区佳林路     邮编：201206
			</p>

		</div>
		</footer>
	</div>
	<!-- /container -->
</body>
</html>