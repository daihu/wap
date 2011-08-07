<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.HashMap"%>
<%@page import="com.zhazh.wap.BizInvoker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>客户端安装包下载</title>
<link href="css/wap.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top">
	<img src="img/logo.gif" alt="" width="132" height="29" hspace="0" vspace="0" border="0" />
</div>
<div class="center">
<p>
<%
String didStr = request.getParameter("did");
String pidStr = request.getParameter("pid");
String vidStr = request.getParameter("vid");
BizInvoker v = new BizInvoker().setPageNo(0).setPageSize(100);
if (didStr != null){
	v.setParamter("did", Long.valueOf(didStr));
}
if (pidStr != null){
	v.setParamter("pid", Long.valueOf(pidStr));
}
v.invoke("client","getClients",3600);
for(int i = 0; i < v.getDatas().length; i++){
	Object[] row = (Object[])v.getDatas()[i];
	out.print(String.format("<a href=%s>%s(版本:%s)</a>", row[2], row[1], row[0]));
	if (i != v.getDatas().length -1){
		out.print("<br/>");
	}
}

out.print("<br/>");
if (vidStr != null){
	out.print(String.format("<a href=devices.jsp?vid=%s>返回手机列表</a>", vidStr));
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