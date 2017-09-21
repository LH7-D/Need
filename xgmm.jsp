<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户密码修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
 #main{
     font-size:35px;
 }
<!--
 .STYLE1 {
	font-family: "楷体";
	font-size: 18px;
	color: #666666;
	font-weight: bold;
}
 .STYLE2 {
	font-family: "楷体";
	font-size: 16px;
	color: #000000;
}
-->
.zlh{
      background:url(image/1.jpg) no-repeat;
      width:60px;
      height:30px;
    }
    span{
       color:#FF0000;
    }
</style>
<script type="text/javascript">
function showError(){
	var a = document.getElementById("pass").value;
	if(a.length<6||a.length>20){
	    document.getElementById("pwd1").innerText="请输入6-20个字母数字";
	}
	else{
		document.getElementById("pwd1").innerText="";
	}
	} 
function showError1(){
	var a = document.getElementById("password").value;
	var b = document.getElementById("password1").value;
	if(a!=b){
	    document.getElementById("pwd3").innerText="密码输入错误！";
	}
	else{
		document.getElementById("pwd3").innerText="";
	}
}  
function showError2(){
	var a = document.getElementById("pass").value;
	var b = document.getElementById("pass1").value;
	if(a!=b){
	    document.getElementById("pwd2").innerText="两次密码不一致";
	}
	else{
		document.getElementById("pwd2").innerText="";
	}
}  
</script>
  </head>
  
  <body>
   <form action="user_doEditJt.action" method="post">
	<div id="main" align="center" style="margin-top:50px" class="STYLE1" >修改密码</div>
		<table class="STYLE2" align="center" style="margin-top:20px;margin-bottom:50px">
			<tr>
				<th width="30%">原来的密码：</th>
				<td width="70%">
				<input type="hidden" name="password1" value="${user.trustsPassword}" style="margin-right: 50px"value="" id ="password1">
				<input name="password" type="password"  id ="password" placeholder="输入原来的密码" onchange="showError1();">
								<span id="pwd3" style="display: inline;"></span>
		         
		         <!--隐藏信息 -->
		         <input name="user.trustsNumber" type="hidden" value="${user.trustsNumber}">
                 <input type="hidden" name="param" value="1"/>
		         <input name="user.trustsName" type="hidden" value="${user.trustsName}"> 
                 <input name="user.username" type="hidden" value="${user.username}">
                 <input name="user.trustsPostcode" type="hidden" value="${user.trustsPostcode}"> 
                 <input name="user.trustsTelephone" type="hidden" value="${user.trustsTelephone}"> 
                 <input name="user.trustsEmile" type="hidden" id="Trusts_Emile" value="${user.trustsEmile}">  
                 <input name="user.trustsType" type="hidden" value="普通用户">         
                 <input name="user.trustsAdress" type="hidden" value="${ user.trustsAdress}">   
                 <input name="user.trustsWeb" type="hidden"  value="${user.trustsWeb}">
                 <input name="user.clientFr" type="hidden" value=" ${user.clientFr} ">
                 <input name="user.trustsContactor" type="hidden" value="${ user.trustsContactor}"> 
                 <input name="user.trustsTelephone1" type="hidden" value="${user.trustsTelephone1 }">     
                 <input name="user.trustsFax" type="hidden"  value="${user.trustsFax }">
				</td>
			</tr>
			<tr>
				<th width="30%">修改密码：</th>
				<td width="70%"><input name="user.trustsPassword" type="password"
                    id="pass" placeholder="6-20个字母数字"  onchange="showError();">
								<span id="pwd1" style="display: inline;"></span>
                </td>
						
			</tr>
			<tr>
				<th width="30%">确认修改密码：</th>
				<td width="70%"><input name="pass1" type="password"
                    id="pass1" placeholder="6-20个字母数字" onchange="showError2();">
								<span id="pwd2" style="display: inline;"></span>
                </td>
						
			</tr>
			<tr>
				<th colspan="2"><input type="hidden" name="username" style="margin-right: 50px"value="" >
					<input type="submit" value="修改" style="margin-right: 40px" class="zlh" onClick="return confirm('确定修改？！');"> 
					<input type="reset" value="重置" class="zlh"></th>
			</tr>
		</table>
	</form>
  </body>
</html>
