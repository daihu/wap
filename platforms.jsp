<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.HashMap"%>
<%@page import="com.zhazh.wap.BizInvoker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>手机平台列表</title>
<link href="css/wap.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top">
	<img src="img/logo.gif" alt="" width="132" height="29" hspace="0" vspace="0" border="0" />
</div>
<div class="center">
<p>
<%
String pageNoStr = request.getParameter("pageNo");
int pageSize = 30;
int pageNo = 0;
if (pageNoStr != null){
	pageNo = Integer.valueOf(pageNoStr);
}
BizInvoker v = new BizInvoker().setPageNo(pageNo).setPageSize(pageSize).invoke("client","getPlatforms",3600);
for(int i = 0; i < v.getDatas().length; i++){
	Object[] row = (Object[])v.getDatas()[i];
	out.print(String.format("<a href=clients.jsp?pid=%d>%s</a>", row[0], row[1]));
	if (i != v.getDatas().length -1){
		out.print("|");
	}
}
out.print("<br/>");
if (v.getTotalResults() > pageNo*pageSize){
	out.print(String.format("|<a href=platforms.jsp?pageNo=%d>下一页</a>", pageNo + 1));
}
if (pageNo > 0){
	out.print(String.format("|<a href=platforms.jsp?pageNo=%d>上一页</a>", pageNo - 1));
}
%>



<br/>
<a href=index.jsp>返回首页</a>
</p>
</div>

<div class="foot">
<p>www.zhazh.com</p>
</div>
</body>
</html>