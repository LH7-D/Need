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
 
    <div id="main">
		<h2>形式审核</h2><a href="gjquery.jsp">多添件查询</a>
		<a href="searchRequirement.jsp">高级检索</a>
	</div>
 	<form action="shenpi_selectByterm.action" method="post">查询条件<br>
 	     <center>
	          <select name="tj" id="tj" value="${searchText1 }">
                       <option>机构全称</option>
                       <option>归口管理单位</option>
                       <option>所在地域</option>
                       <option>技术需求名称</option>           
              </select>
             
              <input name="xq" type="text" id="xq" size="30" placeholder="具体查询内容" value="${searchText2 }"> 
              <select name="cz" id="cz" value="${searchText3 }">
                  <option>模糊查找</option>   
                  <option>精确查找</option> 
              </select>
              <input type="submit" name="submit2" id="submit1" value="查询" />
         </center>
	</form>	
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
			<th>形式审核</th>
			<th>操作</th>
		</tr>
	</thead>
	<c:forEach var="shenpi" items="${shenpis }">
			<tr align="center"  height="24px">
				<td width="100">${shenpi.num}</td>
				<td width="100">${shenpi.trusterName}</td>
				<td width="100">${shenpi.bno}</td>
				<td width="100">${shenpi.trustsAdmin}</td>
				<td width="70">${shenpi.time }</td>
				<td width="100">${shenpi.trustsContactor }</td>
				<td width="100">${shenpi.zt1 }</td>
				<td width="100">
					<a href="xinxi_doQueryXinxi.action?param=0&num=${shenpi.num}">审核</a>
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
