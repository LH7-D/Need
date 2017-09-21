<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询全部</title>
    
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
<script type="text/javascript">
$(document).ready(function(){
		$(".div2").click(function(){ 
			$(this).next("div").slideToggle("slow")  
			.siblings(".div3:visible").slideUp("slow");
		});
	});
</script>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
}

th, td {
	border: solid #ddd 2px;
	height: 20px;
}

div {
	text-align: center;
}
h6{
   color:#fff;
}
#main a span{
   color:#ff0000;
}
</style>
  </head>
 <body>
 
    <div id="main">
		<h3>已申报需求表查看</h3>
		<a href="shenpi_doQuery2.action">未审核表</a>
		<a href="shenpi_doQuery4.action">已退回需求表</a>
		<a href="../user_ordinary/demandColl.jsp"><span>添加技术需求</span></a>
	</div>
 	<form action="shenpi_queryAll.action" method="post">
		<table align="center" >
			<tr>
				<td style="vertical-align: middle;">技术需求名称：
					<input type="text" style="width: 200px;height: 20px;font-size: 10px" name="queryText"  value="${searchText }"/>
					<input type="submit" value="查询" style="width: 100px;height: 20px;font-size: 10px"/>
				</td>
			</tr>
		</table>
	</form>	
	<center>
	<table align="center" width="100%" id="exampletable">
	<thead>
		<tr  style="background:#bbffee; font-family:SimHei;">
			<th>&nbsp;需求编号&nbsp;</th>
			<th>&nbsp;  &nbsp;技术需求名称 &nbsp;</th>
			<th>&nbsp;需求时间&nbsp;</th>	
			<th>&nbsp;联系人&nbsp;</th>	
			<th>&nbsp;形式审核&nbsp;</th>
			<th>&nbsp;技术审核&nbsp;</th>
			<th>&nbsp;操作&nbsp;</th>
		</tr>
	</thead>
	<c:forEach var="shenpi" items="${shenpis }">
			<tr align="center"  height="24px">
				<td width="100">${shenpi.num}</td>
				<td width="160">${shenpi.bno}</td>
				<td width="70">${shenpi.time }</td>
				<td width="150">${shenpi.trustsContactor }</td>
				<td width="150">${shenpi.zt1 }</td>
				<td width="150">${shenpi.zt2 }</td>	
				<td width="120">
					<a href="xinxi_doQueryXinxi.action?param=0&num=${shenpi.num}">查看</a>&nbsp;&nbsp;
				</td>
			</tr>
	</c:forEach>
	</table>
	</center>
<script type="text/javascript">
$(function() {
	$("#exampletable").slimtable();
});
</script>
  </body>
</html>
