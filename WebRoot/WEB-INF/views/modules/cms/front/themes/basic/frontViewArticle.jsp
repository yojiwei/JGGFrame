<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>${article.title}- ${category.name}</title>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description"
	content="${article.description} ${category.description}" />
<meta name="keywords" content="${article.keywords} ${category.keywords}" />
<script type="text/javascript">
	$(document).ready(
			function() {
				if ("${category.allowComment}" == "1"
						&& "${article.articleData.allowComment}" == "1") {
					$("#comment").show();
					page(1);
				}
				//判断是否有附件，如有解析json格式展现附件下载
				<c:if test="${not empty article.files}">

				</c:if>
			});
	function page(n, s) {
		$.get("${ctx}/comment", {
			theme : '${site.theme}',
			'category.id' : '${category.id}',
			contentId : '${article.id}',
			title : '${article.title}',
			pageNo : n,
			pageSize : s,
			date : new Date().getTime()
		}, function(data) {
			$("#comment").html(data);
		});
	}
</script>
</head>
<body>

	<div class="con_div">
		<div class="con_d">


			<div class="row">

				<div class="span12">
					<ul class="breadcrumb">
						<cms:frontCurrentPosition category="${category}" />
					</ul>
				</div>
				<div class="span12">
					<div class="row">
						<div class="span10">
							<h3
								style="color: #555555; font-size: 20px; text-align: center; border-bottom: 1px solid #ddd; padding-bottom: 15px; margin: 25px 0;">${article.title}</h3>
							<div style="padding: 5px; margin: 25px 0; text-align: center;">
								来源：${article.articleData.copyfrom} &nbsp; 点击数：${article.hits}
								&nbsp; 发布时间：
								<fmt:formatDate value="${article.createDate}"
									pattern="yyyy-MM-dd" />
							</div>

							<c:if test="${not empty article.description}">
								<div>摘要：${article.description}</div>
							</c:if>
							<div>${article.articleData.content}</div>

							<c:if test="${not empty article.files}">
			附件：
				<c:forEach items="${fileList}" var="filelist">
<c:choose>
<c:when test="${fileList[2] eq 'pdf' || fileList[2] eq 'PDF'}">
<div>
	<span style="cursor:pointer;" onclick="show('${ctxStatic}/pdfjs/web/viewer.html?file=${filelist[0]}')">${filelist[1]}</span>&nbsp;
</div>
		</c:when>
		<c:otherwise>
<div>
<span style="cursor:pointer;" onclick="openDownloadDialog('${filelist[0]}','${filelist[1]}')">${filelist[1]}</span>&nbsp;
</div>
</c:otherwise>
</c:choose>
								</c:forEach>
					</c:if>
						</div>


<!-- 在线预览Pdf -->
<script type="text/javascript">
	function show(filepath) {
		var curWwwPath = window.document.location.href;
		var pathName = window.document.location.pathname;
		var pos = curWwwPath.indexOf(pathName);
		var localhostPath = curWwwPath.substring(0, pos);
		window.open(filepath);
	}
	function openDownloadDialog(url, saveName) {
    if (window.navigator.msSaveBlob) {
        try {
            //创建XMLHttpRequest对象
            var xhr = new XMLHttpRequest();
            //配置请求方式、请求地址以及是否同步
            xhr.open('POST', url, true);
            //设置请求结果类型为blob
            xhr.responseType = 'blob';
            //请求成功回调函数
            xhr.onload = function(e) {
                if (this.status == 200) {//请求成功
                    //获取blob对象
                    var blob = this.response;
                    //获取blob对象地址，并把值赋给容器
                    window.navigator.msSaveBlob(blob, saveName);
                }
            };
            xhr.send();
        }catch (e) {
            console.log(e);
        }
    }else {
    	if (typeof url == 'object' && url instanceof Blob) {
            url = URL.createObjectURL(url); // 创建blob地址
        }
        var aLink = document.createElement('a');
        aLink.href = url;
        aLink.download = saveName || '';
        var event;
        if (window.MouseEvent) {
            event = new MouseEvent('click');
        }
        else {
            event = document.createEvent('MouseEvents');
            event.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
        }
        aLink.dispatchEvent(event);
    }
}
</script>





					</div>
					<div class="row">
						<div id="comment" class="hide span10">正在加载评论...</div>
					</div>
					<!-- 
	     <div class="row">
	       <div class="span10">
			<h5>相关文章</h5>
			<ol><c:forEach items="${relationList}" var="relation">
				<li style="float:left;width:230px;"><a href="${ctx}/view-${relation[0]}-${relation[1]}${urlSuffix}">${fns:abbr(relation[2],30)}</a></li>
			</c:forEach></ol>
	  	  </div>
  	    </div>
  	     -->
				</div>
			</div>

		</div>
	</div>

</body>
</html>