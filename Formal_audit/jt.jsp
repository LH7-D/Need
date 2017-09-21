<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aa.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="jiaoben1286-fenye/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="jiaoben1286-fenye/js/slimtable.min.js"></script>
    <link rel="stylesheet" href="jiaoben1286-fenye/css/slimtable.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	<center>
	<table align="center" width="100%" id="exampletable">
	<thead>
		<tr  style="background:#bbffee; font-family:SimHei;">
			<th>需求编号</th>
			<th>公司名称</th>
			<th>技术需求名称 </th>
			<th>归口管理部门 </th>
			<th>需求时间</th>	
			<th>联系人</th>
			<th>技术审核</th>
			<th>审核</th>
		</tr>
	</thead>
    <s:iterator value="#request.list" id="shenpi">
         <tr>
            <td><s:property value="#shenpi.num"/></td>
            <td><s:property value="#shenpi.trusterName"/></td>
            <td><s:property value="#shenpi.bno"/></td>
            <td><s:property value="#shenpi.trustsAdmin"/></td>
            <td><s:property value="#shenpi.time"/></td>
            <td><s:property value="#shenpi.trustsContactor"/></td>
            <td><s:property value="#shenpi.zt2"/></td>
            <td width="100">
					<a href="xinxi_doQueryXinxi.action?param=0&num=<s:property value="#shenpi.num"/>">审核</a>
			</td>
         </tr>
    </s:iterator>
	
	
	</table><a href="gjquery.jsp">返回</a>
	</center>
	<script type="text/javascript">
$(function() {
	$("#exampletable").slimtable();
});
</script>
  </body>
</html>
