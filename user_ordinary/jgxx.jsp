<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户基本信息添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
function showWebError(){
	var reg = /^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;
	var a = document.getElementById("Trusts_Web").value;

    if(!reg.test(a))
    {
    	document.getElementById("web").innerText="格式错误 ";
    }
    else{
    	document.getElementById("web").innerText="";
    }
} 
function showEmileError(){
	var reg = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
	var a = document.getElementById("Trusts_Emile").value;

    if(!reg.test(a))
    {
    	document.getElementById("em").innerText="邮箱格式不正确";
    }
    else{
    	document.getElementById("em").innerText="";
    }
} 
function showPostcodeError(){
	var a = document.getElementById("Trusts_Postcode").value;
	if(a.length!=6){
	    document.getElementById("pt").innerText="格式错误";
	}
	else{
		document.getElementById("pt").innerText="";
	}
}  
function showError4(){
	var a = document.getElementById("Trusts_Telephone2").value;
	if(a.length!=11){
	    document.getElementById("ph").innerText="11位手机号";
	}
	else{
		document.getElementById("ph").innerText="";
	}
} 
</script>
<style type="text/css">
    /*设置超链接样式*/   
  table{
      width:900px;
      border-collapse:collapse;
      border:1px solid #000;  
      font-family:SimHei;
  }
  td,tr{
      border:1px solid #000;   
      font-size:20px;   
      }
    a 
    {
        color: #5086a5; 
        text-decoration: none;
        font-size: 20px;
    }
    a:hover 
    {
        color: #5086a5; 
        text-decoration: underline;
        font-size: 20px;
    }
    a:visited 
    {
        color: #5086a5;
        font-size: 20px;
    }
    /*整个tab层居中，宽度为600px*/
    p
    {
        font-size:9pt;
        margin-left:20pt;
    }
  
     li{
     
       white-space:nowrap;
       text-overflow:ellipsis;
       -o-text-overflow:ellipsis;
       overflow:hidden;   
    }
    tr span{
     color:#ff0000;
     font-size:12px;
     font-weight:bold;
  }
   span{
     color:#ff0000;
     font-size:12px;
     font-weight:bold;
  }
</style>
  </head>
  
  <body>
  <div align="center">
     <h3>
      用户基本信息填报
     </h3>
  </div>
<form action="user_doEditJt.action" method="post">
  <table align="center">
   <tr>
       <td> 
          公司编号
       </td>
       <td colspan="3">
           <input name="user.trustsNumber" type="text" id="Trusts_Admin"  value="${user.trustsNumber}" style="height:100%;width:50%">
           <input type="hidden" name="param" value="1"/>
      </td>
  </tr>
  <tr>
      <td ><span>*</span>机构全称</td>
      <td>
          <input name="user.trustsName" type="text" style="height:100%;width:99%" id="Trusts_Name" value="${user.trustsName}"> 
          <input name="user.username" type="hidden" value="${user.username}">
          <input name="trustsPassword" type="hidden" value="${user.trustsPassword }">
          <input name="user.trustsType" type="hidden" value="普通用户"> 
      </td>
      <td ><span>*</span>通讯地址</td>
       <td >
           <input name="user.trustsAdress" type="text" id="Trusts_Adress" value="${ user.trustsAdress}" style="height:100%;width:99%">
       </td>   
  </tr>
  <tr>
       <td><span>　</span>网　址</td>
       <td>
           <input name="user.trustsWeb" type="text" id="Trusts_Web" value="${user.trustsWeb}" onchange="showWebError();" style="height:100%;width:70%">
	       <span id="web" style="display: inline;"></span>
       </td>
       <td><span>*</span>电子信箱</td>
    <td>
        <input name="user.trustsEmile" type="text" id="Trusts_Emile" value="${user.trustsEmile}" onchange="showEmileError();" style="height:100%;width:70%">
	    <span id="em" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td><span>*</span>法人代表</td>
    <td>
        <input name="user.clientFr" type="text" value=" ${user.clientFr} " style="height:100%;width:99%" id="Client_Fr">
    </td>
    <td>邮政编码</td>
    <td>
        <input name="user.trustsPostcode" type="text" id="Trusts_Postcode" value="${user.trustsPostcode}" onchange="showPostcodeError();"style="height:100%;width:80%"> 
        <span id="pt" style="display: inline;"></span>
    </td>
  </tr>
 <!-- ------------------------------------- -->
  <tr>
    <td><span>*</span>联系人</td>
    <td >
        <input name="user.trustsContactor" type="text" value="${ user.trustsContactor}"style="height:100%;width:99%" id="Trusts_Contactor">      
    </td>
    <td>固定电话</td>
    <td>
          <input name="user.trustsTelephone1" type="text" value="${user.trustsTelephone1 }" id="Trusts_Telephone1" style="height:100%;width:70%" >
              
  </tr>
  
  <!-- ----------------------------------- -->
  <tr>
   <td><span>*</span>手机</td>
   <td>
       <input name="user.trustsTelephone" type="text" id="Trusts_Telephone2" style="height:100%;width:60%" onchange="showError4();" value="${user.trustsTelephone}">
	   <span id="ph" style="display: inline;"></span></td>
			
    <td>传真</td>
    <td>
            <input name="user.trustsFax" type="text" id="Trusts_Fax" value="${user.trustsFax }" style="height:100%;width:99%">
    </td>
  </tr>
  <tr>
       <td colspan="4" align="center">
         <br>
                <input type="submit" name="submit"  onclick="star()" value="保存并提交" />
       </td>
   </tr> 
  </table>
    
    </form>
  </body>
</html>
