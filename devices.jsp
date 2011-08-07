<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.HashMap"%>
<%@page import="com.zhazh.wap.BizInvoker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>手机型号列表</title>
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
String vidStr = request.getParameter("vid");
BizInvoker v = new BizInvoker().setParamter("vid", Long.valueOf(vidStr)).setPageNo(pageNo).setPageSize(pageSize).invoke("client","getDevices",3600);

boolean hasPrev = false;
if (v.getTotalResults() > (pageNo+1)*pageSize){
	out.print(String.format("<a href=devices.jsp?vid=%s&pageNo=%d>下一页</a>", vidStr, pageNo + 1));
	hasPrev = true;
}
if (pageNo > 0){
	if (hasPrev){
		out.print(" | ");
	}
	out.print(String.format("<a href=devices.jsp?vid=%s&pageNo=%d>上一页</a>", vidStr, pageNo - 1));
}
out.print("<br/>");
for(int i = 0; i < v.getDatas().length; i++){
	Object[] row = (Object[])v.getDatas()[i];
	if (i != 0 && i % 10 == 0){
		out.print("<br/>");
	}
	out.print(String.format("<a href=clients.jsp?did=%d&vid=%s>%s</a>", row[0], vidStr, row[1]));
	if (i != v.getDatas().length -1){
		out.print(" | ");
	}
}
out.print("<br/>");
hasPrev = false;
if (v.getTotalResults() > (pageNo+1)*pageSize){
	out.print(String.format("<a href=devices.jsp?vid=%s&pageNo=%d>下一页</a>", vidStr, pageNo + 1));
	hasPrev = true;
}
if (pageNo > 0){
	if (hasPrev){
		out.print(" | ");
	}
	out.print(String.format("<a href=devices.jsp?vid=%s&pageNo=%d>上一页</a>", vidStr, pageNo - 1));
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