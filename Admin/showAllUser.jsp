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
    
    <title>进行形式审核</title>
    
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
</style>
  </head>
 <body>
	<center>
	<table align="center" width="100%" id="exampletable">
	<thead>
		<tr  style="background:#bbffee; font-family:SimHei;">
			<th>组织编号</th>
			<th>组织名称</th>
			<th>用户类型</th>
			<th>操作</th>
		</tr>
	</thead>
	<c:forEach var="suser" items="${suser }">
			<tr align="center"  height="24px">
				<td width="100">${suser.trustsNumber}</td>
				<td width="100">${suser.trustsName}</td>
				<td width="100">${suser.trustsType}</td>
				<td>
				   <a href="user_doQueryXinxi.action?param=0&num=${suser.trustsNumber}">删除</a>
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
