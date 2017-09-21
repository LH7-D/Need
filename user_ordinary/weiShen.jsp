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
    
    <title>未审核查需求查看</title>
    
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
		<a href="../user_ordinary/demandColl.jsp"><span>添加技术需求</span></a>
	</div>
    <center>
	<table align="center" width="100%" id="exampletable">
	<thead>
		<tr  style="background:#bbffee; font-family:SimHei;">
			<th>需求编号</th>
			<th>技术需求名称 </th>
			<th>归口管理部门 </th>
			<th>需求时间</th>	
			<th>联系人</th>
			<th>操作</th>
		</tr>
	</thead>
	<c:forEach var="shenpi" items="${shenpis }">
			<tr align="center"  height="24px">
				<td width="100">${shenpi.num}</td>
				<td width="100">${shenpi.bno}</td>
				<td width="100">${shenpi.trustsAdmin}</td>
				<td width="70">${shenpi.time }</td>
				<td width="100">${shenpi.trustsContactor }</td>
				<td width="150">
					<a href="xinxi_doQueryXinxi.action?param=0&num=${shenpi.num}">查看</a>&nbsp;
					<a href="shenpi_doDelete.action?param=0&num=${shenpi.num}" onClick="return confirm('确定删除?删除不可找回！');">删除</a>&nbsp;
					<a href="xinxi_doQueryXx.action?param=0&num=${shenpi.num}">修改</a>&nbsp;
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
