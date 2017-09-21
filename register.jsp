<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@ page import="java.sql.*" %><%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册</title>
<script language="javascript">
   function showError1(){
            	var a = document.getElementById("zzbm").value;
            	if(a.length!=18){
            	    document.getElementById("zm").innerText="输入不合法";
            	    form1.zzbm.focus();
            		return false;
            	}
            	else{
            		document.getElementById("zm").innerText="";
            	}
            	} 

            function showError(){
            	var a = document.getElementById("pass").value;
            	if(a.length<6||a.length>20){
            	    document.getElementById("pwd1").innerText="请输入6-20个字母数字";
            	}
            	else{
            		document.getElementById("pwd1").innerText="";
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
            function showError3(){
            	var a = document.getElementById("post").value;
            	if(a.length!=6){
            	    document.getElementById("pt").innerText="格式错误";
            	}
            	else{
            		document.getElementById("pt").innerText="";
            	}
            }  
            function showError4(){
            	var a = document.getElementById("phone").value;
            	if(a.length!=11){
            	    document.getElementById("ph").innerText="11位手机号";
            	}
            	else{
            		document.getElementById("ph").innerText="";
            	}
            } 
            function showError5(){
            	var reg = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
            	var a = document.getElementById("ema").value;

                if(!reg.test(a))
                {
                	document.getElementById("em").innerText="邮箱格式不正确";
                	form1.ema.focus();
                	return false;
                }
                else{
                	document.getElementById("em").innerText="";
                }
            } 
            function showError6(){
            	var a = document.getElementById("name").value;
            	if(a.length<6||a.length>20){
            	    document.getElementById("na").innerText="请输入6-20个字母数字";
            	}
            	else{
            		document.getElementById("na").innerText="";
            	}
            	}  
            
            function star()
            {
            	if (form1.zzbm.value == "") {
            		window.alert("请输入身份证号！");		
            		form1.zzbm.focus();
            		return false;
            	}
            	if (form1.jname.value == "") {
            		window.alert("请输入机构全称！");
            		form1.jname.focus();
            		return false;
            	}
            	
            	 if (form1.name.value == "") {
            			window.alert("请输入用户名！");
            			form1.name.focus();
            			return false;
            		}
            		if (form1.pass.value == "") {
            			window.alert("请输入密码！");
            			form1.pass.focus();
            			return false;
            		}
            		if (form1.pass1.value == "") {
            			window.alert("请输入确认密码！");
            			form1.pass1.focus();
            			return false;
            		}
            		
                    if(form1.pass.value!=form1.pass1.value){
            	   alert("两次密码输入不正确！");return false;}
                 return true;

            }
function checkUserName(){
	$.ajax({
                    type : "post",
                    url : "checkName.action",
                    dataType : "text",//设置需要返回的数据类型
                    data:{"name":document.getElementById("username").value},
                    success : function(d) {
                    alert("1");  
                    	var a1=document.getElementById("a1");
                    	if(d=="用户名已存在！")
                    	{   
                        	a1.style.display = '';
                       	 	document.getElementById("username").focus();
                    	}
                    	else
                    	{
                    		a1.style.display = 'none';
                    	}
                    },
                    error : function() {
                        //alert("错误");
                    }
                });	
	}

</script>
<style type="text/css">
	  .zlh{
      background:url(image/1.jpg) no-repeat;
      width:60px;
      height:30px;
      border:0;
      cursor:pointer;
    }
    table{
      font-size:20px;
    }
    span{
      color:#FF0000;
      font-size:15px;
    }
	 h1{
	   font-size:50px;
	 } 
	</style>	
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/import_basic.css" rel="stylesheet" type="text/css"/>
<link href="skins/sky/import_skin.css" rel="stylesheet" type="text/css" id="skin" themeColor="blue"/>
<script type="text/javascript" src="js/jquery-1.4.js"></script>
<script type="text/javascript" src="js/bsFormat.js"></script>
<!--框架必需end--><!--引入弹窗组件start-->
<script type="text/javascript" src="js/attention/zDialog/zDrag.js"></script>
<script type="text/javascript" src="js/attention/zDialog/zDialog.js"></script>
<!--引入弹窗组件end--><!--修正IE6支持透明png图片start-->
<script type="text/javascript" src="js/method/pngFix/supersleight.js"></script>
<!--修正IE6支持透明png图片end-->
</head>
<style type="text/css">
<!--
 .red {
	color: #ff0000;
}
</style>
<body>
	<div id="mainFrame">
		<div id="hbox">
        	<div id="bs_bannercenter">
            	<div id="bs_bannerleft">
                	<div id="bs_bannerright">
                    	<div class="bs_banner_logo"></div>
                            <div class="bs_banner_title" ></div>
                            <div class="bs_nav">
                                <div class="bs_navleft" >
                                    <li>
                                        <span id="username"></span>您好，今天是
                                        <script>
                                            var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
                                            var now = new Date();
                                            var year = now.getFullYear();
                                            var month = now.getMonth() + 1;
                                            var day = now.getDate()
                                            var currentime = year + "年" + month + "月" + day + "日 " + weekDayLabels[now.getDay()]
                                            document.write(currentime)
                                        </script>
                                    </li>
                                    <div class="clear"> </div>
                                </div>
                                <div class="bs_navright">
                                    <span class="icon_no hand" onclick='top.Dialog.confirm("确定要退出系统吗",function(){window.location="login.jsp"});'>退出系统</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			 <div align="center">
			  <h1>公司注册</h1>
              <span>注：带*号为必填项</span>	
             <form action="user_register.action" method="post" onSubmit="return star()">	
			    <!-- ----------------------------------------------------------------- -->
			    <table width="600" border="0" align="center">
							<tr align="left">
								<td >身份证号</td>						
								<td>
								<input name="user.trustsNumber" type="text" id="zzbm" onblur="checkUserName();">
	  							<a id="a1" style="display:none">用户名已存在！</a>
								 <span id="zm" style="display: inline;">*</span>
								</td>
							</tr>
							<tr align="left">
								<td >机构全称</td>
								<td ><input name="user.trustsName" type="text" id="jname" placeholder="组织全称">
								  <span>*</span>
								</td>
							</tr>
							<tr align="left">
								<td >用户名</td>
								<td ><input name="user.username" type="text" id="name" placeholder="6-20个字母数字" onchange="showError6();">
									<span id="na" style="display: inline;">*</span>
								</td>
							</tr>
							<tr align="left">
								<td >密码</td>
								<td >
								<input name="trustsPassword" type="password" id="pass"  placeholder="6-20个字母数字" onchange="showError();">
								<span id="pwd1" style="display: inline;">*</span>
								</td>
							</tr>
						  	<tr>
								<td >确认密码</td>
								<td >
								<input name="pass1" type="password" id="pass1"  placeholder="请重新输入上面密码" onchange="showError2();">
								<span id="pwd2" style="display: inline;">*</span>
								</td>
							</tr>
					   
							<tr align="left">
								<td >邮编</td>
								<td >
								<input name="user.trustsPostcode" type="text" id="post" onchange="showError3();">
								<span id="pt" style="display: inline;"></span>
								</td>
							</tr>
							<tr align="left">
								<td >手机号</td>
								<td ><input name="user.trustsTelephone" id="phone" type="text" onchange="showError4();">
								     <span id="ph" style="display: inline;"></span>
								</td>
							</tr>
							<tr align="left">
								<td >邮箱</td>
								<td ><input name="user.trustsEmile" id="ema" type="text" onchange="showError5();">
								  <span id="em" style="display: inline;"></span>
								</td>
							</tr>
							<tr align="left">
							    <input name="user.trustsType" type="hidden" value="普通用户" >
								<input name="user.trustsAdress" type="hidden" value="">
								<input name="user.trustsWeb" type="hidden" value="">
								<input name="user.clientFr" type="hidden" value="">
								<input name="user.trustsContactor" type="hidden" value="">
								<input name="user.trustsTelephone1" type="hidden" value="">
								<input name="user.trustsFax" type="hidden" value="">					
							</tr>
							
						</table>
						<p align="center">
							<input  type="submit" name="submit" value="注册"class="zlh">
							<input type="reset" name="Submit1" value="重置" class="zlh">
						</p>
			    
			</form>
			</div>
			<div id="fbox">
                <div id="bs_footcenter">
                    <div id="bs_footleft">
                        <div id="bs_footright">
                            业务咨询电话：0311-85813216     技术服务电话：13028644840 18330107787
                        </div>
                    </div>
                </div>
            </div>
		</div>
</body>
</html>