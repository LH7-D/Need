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
    
    <title>查看详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
  table{
      width:1000px;
      border-collapse:collapse;
      border:1px solid #000;  
      font-family:SimHei;
      width:80%;
  }
  td,tr{
      border:1px solid #000;      
      }
      
      p
    {
        font-size:9pt;
        margin-left:20pt;
    }
      
</style>
  </head>
  
<body>
  
<h2 align="center">河北省重大技术需求征集表</h2>
<form action="shenpi_updateTypejs.action" method="post">      
<table align="center">
<c:forEach var="xinxi" items="${xinxis }">
  <tr  align="center">
      <td>需求编号</td>
      <td colspan="3">${xinxi.num}</td>
  </tr>
  
  <tr>
    <td width="110px">机构全称</td>
    <td>${xinxi.trusterName}</td>
    <td>归口管理部门</td>
    <td>${xinxi.trustsAdmin}</td>
  </tr>
  <tr>
    <td width="110px">通讯地址</td>
    <td>${xinxi.trustsAdress }</td>
     <td >所在地域</td>
    <td >${xinxi.title }</td>
  </tr>
  <tr>
    <td>单位网址</td>
    <td>${xinxi.trustsWeb }</td>
    <td>电子信箱</td>
    <td>${xinxi.trustsEmile}</td>
  </tr>
  <tr>
    <td>法人代表</td>
    <td> ${xinxi.clientFr}</td>
    <td>邮政编码</td>
    <td>${xinxi.trustsPostcode}</td>
  </tr>
  <tr>
    <td>联系人</td>
    <td > ${xinxi.trustsContactor }</td>
    <td>固定电话</td>
    <td>${xinxi.trustsTelephone1 } </td>
  </tr>
    <tr>
   <td>手机</td>
   <td>${xinxi.trustsTelephone2 }</td>
    <td>传真</td>
    <td>${xinxi.trustsFax }</td>
  </tr>
  <tr>
    <td>机构属性</td>
    <td colspan="3">${xinxi.trustsNature }</td>
  </tr>

  <tr>
    <td colspan="4" height="50px">机构简介（单位基本情况，研究基础等，限500字）<br>
      ${xinxi.trustsInd}
    </td>

  </tr>

  <tr>
    <td>技术需求名称</td>
    <td>
        ${xinxi.tecName}
    </td>
    <td>需求时限</td>
    <td>
          ${xinxi.tecTime1 } 年　至
         ${xinxi.tecTime2} 年
    </td>
  </tr>
   <tr>
    <td colspan="4">重大科技需求概述（主要内容，技术指标、预期经济和社会效益等，限500字）<br>
         1、主要问题（需要解决的重大技术问题）<br>
       ${xinxi.tecContents}  <br>
        2、技术关键（所需的关键技术、主要指标）<br>
      ${xinxi.trustsInd1 } <br>
        3、预期目标（技术创新性、经济社会效益）<br>
        ${xinxi.zj2}  <br>
         <br>关键字(1-5个字)
        ${xinxi.gjz}   ${xinxi.gjz2 } ${xinxi.gjz3} ${xinxi.gjz4} ${xinxi.gjz5}  
     </td>
  <tr >
    <td>
       拟投入资金总额
    </td>
    <td colspan="3">
         ${xinxi.zj1}  万元
    </td>
   
  </tr>
  </tr>
 <tr>
    <td rowspan="2">技术需求解决方式</td>
    <td colspan="3">
    ${xinxi.tecMode }
    </td>
  </tr>
  <tr>
    <td>合作意向单位</td>
    <td colspan="2">
   ${xinxi.yxDw }
    </td>
  </tr>
  <tr>
    <td >科技活动类型</td>
    <td colspan="3">   
        ${xinxi.tecType }
    </td>
  </tr>
  <tr>
    <td>学科分类</td>
    <td colspan="3">
           ${xinxi.subType }
    </td>
  </tr>
  <tr>
    <td>需求技术所属领域<br>（非基础研究填写）</td>
    <td colspan="3">
        ${xinxi.tecFiled }
    
    </td>
  </tr>
  <tr>
    <td>需求技术应用行业</td>
    <td colspan="3">
         ${xinxi.tecIndustry }
      <!-- 隐藏基本信息 -->
      <input type="hidden" name="param" value="1"/>
      <input name="xinxi.num" type="hidden" value="${xinxi.num}">
      <input name="xinxi.trustsNumber" type="hidden" value="${xinxi.trustsNumber}">
      <input name="xinxi.trusterName" type="hidden" value="${xinxi.trusterName }" >
      <input name="xinxi.trustsAdress" type="hidden" value="${xinxi.trustsAdress }" >
      <input name="xinxi.trustsWeb" type="hidden" value="${xinxi.trustsWeb }" >
      <input name="xinxi.trustsWeb" type="hidden" value="${xinxi.trustsWeb }" >
      <input name="xinxi.clientFr" type="hidden" value="${xinxi.clientFr }" >
      <input name="xinxi.trustsPostcode" type="hidden" value="${xinxi.trustsPostcode }" >
      <input name="xinxi.trustsContactor" type="hidden" value="${xinxi.trustsContactor }" >
      <input name="xinxi.trustsTelephone1" type="hidden" value="${xinxi.trustsTelephone1 }" >
      <input name="xinxi.trustsTelephone2" type="hidden" value="${xinxi.trustsTelephone2 }" >
      <input name="xinxi.trustsFax" type="hidden" value="${xinxi.trustsFax }" >
      <input name="xinxi.trustsNature" type="hidden" value="${xinxi.trustsNature }" >
      <input name="xinxi.trustsAdmin" type="hidden" value="${xinxi.trustsAdmin }" >
      <input name="xinxi.trustsInd" type="hidden" value="${xinxi.trustsInd }" >
      <input name="xinxi.tecName" type="hidden" value="${xinxi.tecName }" >
      <input name="xinxi.tecContents" type="hidden" value="${xinxi.tecContents }" >
      <input name="xinxi.gjz" type="hidden" value="${xinxi.gjz}" >
      <input name="xinxi.tecType" type="hidden" value="${xinxi.tecType }" >
      <input name="xinxi.subType" type="hidden" value="${xinxi.subType }" >
      <input name="xinxi.tecFiled" type="hidden" value="${xinxi.tecFiled }" >
      <input name="xinxi.tecIndustry" type="hidden" value="${xinxi.tecIndustry }" >
      <input name="xinxi.tecMode" type="hidden" value="${xinxi.tecMode }" >
      <input name="xinxi.yxDw" type="hidden" value="${xinxi.yxDw }" >
       <input name="xinxi.zj1" type="hidden" value="${xinxi.zj1}" >
      <input name="xinxi.zj2" type="hidden" value="${xinxi.zj2 }" >
      <input name="xinxi.tecTime1" type="hidden" value="${xinxi.tecTime1 }" >
      <input name="xinxi.tecTime2" type="hidden" value="${xinxi.tecTime2 }" >
      <input name="xinxi.title" type="hidden" value="${xinxi.title }" >
      <input name="xinxi.gjz2" type="hidden" value="${xinxi.gjz2 }" >
      <input name="xinxi.gjz3" type="hidden" value="${xinxi.gjz3 }" >
      <input name="xinxi.gjz4" type="hidden" value="${xinxi.gjz4 }" >
      <input name="xinxi.gjz5" type="hidden" value="${xinxi.gjz5 }" >
      <input name="xinxi.trustsInd1" type="hidden" value=${xinxi.trustsInd1 }>
      
     </td>
  </tr> 
   </c:forEach>
  
  <!-- --------------------退回填写退回原因-------------------------------- -->
   <tr>
       <td  >
            <span>退回？请填写原因</span>
       </td>
       <td colspan="3">
             <select name="why" id="why" style="height:100%;width:99%">
                 <option value=""></option>
                 <option>格式不正确</option>
                 <option>技术需求不符合要求</option>
             </select>
       </td>
   </tr>   
 
 <!-- ------------------------------------------------- --> 
   <tr>
       <td colspan="4" align="center">
         <br>
                <input type="submit" name="submit1" id="submit1" value="退回" >
                <input type="submit" name="submit2" id="submit2" value="通过">
       </td>
   </tr>      
     
</table> 
</form> 
  </body>
</html>
