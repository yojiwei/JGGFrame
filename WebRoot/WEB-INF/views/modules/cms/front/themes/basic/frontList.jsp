<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>${category.name}</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="${category.description}" />
	<meta name="keywords" content="${category.keywords}" />
</head>
<body>


<div class="con_div">
<div class="con_d">
<!-- 左侧栏目树 -->
	<div class="row">
	   <div class="span2">
	   	 <h4>政务内网</h4>
		 <ul>
		 <c:choose>
			<c:when
				test="${categoryList== null || fn:length(categoryList) == 0}">
				<li>&nbsp;</li>
			</c:when>
			<c:otherwise>
				<cms:frontCategoryList categoryList="${categoryList}"/>
			</c:otherwise>
		 </c:choose>
		 </ul>

	   </div>
	   <div class="span10">
	   <!-- 当前位置 -->
		 <ul class="breadcrumb">
		    <cms:frontCurrentPosition category="${category}"/>
		 </ul>
	   </div>
       <div class="span10">
		  <c:if test="${category.module eq 'article'}">
			<ul><c:forEach items="${page.list}" var="article">
				<li><span class="pull-right"><fmt:formatDate value="${article.createDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}"  title="${article.title}" style="color:${article.color}">${article.title}</a></li>
			</c:forEach></ul>
			<div class="pagination">${page}</div>
			<script type="text/javascript">
				function page(n,s){
					location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;
				}
			</script>
		  </c:if>
		  <c:if test="${category.module eq 'link'}">
			<ul><c:forEach items="${page.list}" var="link">
				<li><a href="${link.href}" target="_blank" style="color:${link.color}"><c:out value="${link.title}" /></a></li>
			</c:forEach></ul>
		  </c:if>
  	  </div>
   </div>

</div>
</div>

</body>
</html>