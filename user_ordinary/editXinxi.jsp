<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
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
	    <script type="text/javascript" src="js/select.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.js"></script>
<!----------------------------- 输入框格式判断 ----------------------->
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
function showTimeError(){
	var a = parseInt(document.getElementById("Tec_Time1").value);
	var b = parseInt(document.getElementById("Tec_Time2").value);
	var c = parseInt(document.getElementById("time3").value);
	if(a>b){
	    document.getElementById("tm").innerText="时间段不符合要求！";
	}
	else if(a-10<0||b-30<0){
	   document.getElementById("tm").innerText="最小年限至少为十年前，最大年限为30年后！";
	}
	else{
		document.getElementById("tm").innerText="";
	}
}  
function showError(){
	var b = parseInt(document.getElementById("Tec_Time2").value);
	var c = parseInt(document.getElementById("time3").value);
	if(b<c){
	    document.getElementById("tm").innerText="时间段不符合要求！";
	}	
	else{
		document.getElementById("tm").innerText="";
	}
}  

/* 输入文本不超过500 */
function checktext(text) 
{ 
    allValid = true; 
   for (i = 0; i < text.length; i++) 
   { 
         if (text.charAt(i) != " ") 
         { 
              allValid = false; 
              break; 
         } 
   } 
   return allValid; 
} 

function gbcount(message,total,used,remain) 
{ 
      var max; 
      max = total.value; 
      if (message.value.length > max) { 
          message.value = message.value.substring(0,max); 
          used.value = max; 
          remain.value = 0; 
          alert("机构简介不能超过 500 个字!"); 
      } 
      else { 
           used.value = message.value.length; 
           remain.value = max - used.value; 
      } 
} 

function keycount(obj)
{
	if(obj.value.length>10){
    	alert("关键字不得超过10个字！");
    	obj.value="";
    	obj.focus();
    }	
}

function show(){
	var s=document.getElementsByName('xinxi.tecType');
	for(var i=0;i<s.length;i++){
		if(s[i].checked==true&&s[i].value=="基础研究"){
			document.getElementById("e1").disabled=true;
			document.getElementById("e2").disabled=true;
			document.getElementById("e3").disabled=true;
			document.getElementById("e4").disabled=true;
			document.getElementById("e5").disabled=true;
			document.getElementById("e6").disabled=true;
			document.getElementById("e7").disabled=true;
			document.getElementById("e8").disabled=true;
			document.getElementById("e9").disabled=true;
			document.getElementById("e0").disabled=true;
		//	document.getElementById("f").disabled=true;
			document.getElementById("fir_h").disabled=true;
			document.getElementById("sec_h").disabled=true;
			document.getElementById("thi_h").disabled=true;
			document.getElementById("fir").disabled=false;
			document.getElementById("sec").disabled=false;
			document.getElementById("thi").disabled=false;
		}
		if(s[i].checked==true&&s[i].value!="基础研究"){
			document.getElementById("e1").disabled=false;
			document.getElementById("e2").disabled=false;
			document.getElementById("e3").disabled=false;
			document.getElementById("e4").disabled=false;
			document.getElementById("e5").disabled=false;
			document.getElementById("e6").disabled=false;
			document.getElementById("e7").disabled=false;
			document.getElementById("e8").disabled=false;
			document.getElementById("e9").disabled=false;
			document.getElementById("e0").disabled=false;
			//document.getElementById("f").disabled=false;
			document.getElementById("fir_h").disabled=false;
			document.getElementById("sec_h").disabled=false;
			document.getElementById("thi_h").disabled=false;
			document.getElementById("fir").disabled=true;
			document.getElementById("sec").disabled=true;
			document.getElementById("thi").disabled=true;
		}
	}
}


function star()
{
	if (biaodan.Trusts_Name.value == "") {
		window.alert("请输入机构名称！");		
		biaodan.Trusts_Name.focus();
		return false;
	}
	 if (biaodan.Trusts_Adress.value == "") {
			window.alert("请输入通信地址！");
			biaodan.Trusts_Adress.focus();
			return false;
		}
		
		if (biaodan.Trusts_Emile.value == "") {
			window.alert("请输入电子信箱！");
			biaodan.Trusts_Emile.focus();
			return false;
		}
		if (biaodan.Client_Fr.value == "") {
			window.alert("请输入公司法人！");
			biaodan.Client_Fr.focus();
			return false;
		}

		if (biaodan.Trusts_Contactor.value == "") {
			window.alert("请输入联系人！");
			biaodan.Trusts_Contactor.focus();
			return false;
		}
		
		if (biaodan.Trusts_Telephone2.value == "") {
			window.alert("请输入手机号！");
			biaodan.Trusts_Telephone2.focus();
			return false;
		}
		
		if (biaodan.Trusts_Nature.value == "") {
			window.alert("请选择机构属性！");
			biaodan.Trusts_Nature.focus();
			return false;
		}
		if (biaodan.Trusts_Ind.value == "") {
			window.alert("请输入机构简介！");
			biaodan.Trusts_Ind.focus();
			return false;
		}
		if (biaodan.Tec_Name.value == "") {
			window.alert("请输入技术需求名称！");
			biaodan.Tec_Name.focus();
			return false;
		}
		if (biaodan.Tec_Contents.value == "") {
			window.alert("请输入重大科技需求概述！");
			biaodan.Tec_Contents.focus();
			return false;
		}
		
		
		if (biaodan.Tec_Mode.value == "") {
			window.alert("请输入技术需求合作模式！");
			biaodan.Tec_Mode.focus();
			return false;
		}
		
     return confirm('确定提交！？');

}
</script>



<!-- 关键字 -->
<script type="text/javascript">
    function k(t){
    	if(event.keyCode==9)t.style.display="";
    }
</script>
<style type="text/css">
    /*设置超链接样式*/   
  table{
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
 <form action="shenpi_doEditXinxi.action" method="post">
<h2 align="center">河北省重大技术需求征集表</h2>
<table align="center">
<c:forEach var="x" items="${xinxis }">
  <tr  align="center">
      <td>需求编号</td>
      <td colspan="3">
      <input name="xinxi.num" type="text" value="${x.num}" readonly="readonly" >
      <input name="xinxi.trustsNumber" type="hidden" value="${x.trustsNumber}">
      <input type="hidden" name="param" value="1"/>
      </td>
  </tr>
  
  <tr>
    <td><span>*</span>机构全称</td>
    <td>
    <input name="xinxi.trusterName" type="text" value="${x.trusterName}" style="height:100%;width:99%">
    </td>
    <td>归口管理部门</td>
    <td>
    <input name="xinxi.trustsAdmin" type="text" value="${x.trustsAdmin}">
    </td>
  </tr>
  <tr>
    <td>通讯地址</td>
    <td>
    <input name="xinxi.trustsAdress" type="text" value="${x.trustsAdress}" style="height:100%;width:99%">
    <span id="web" style="display: inline;"></span>
    </td>
     <td >所在地域</td>
    <td>
     <input name="xinxi.title" type="text" value="${x.title}" style="height:100%;width:99%">
    </td>
  </tr>
  <tr>
    <td>单位网址</td>
    <td>
    <input name="xinxi.trustsWeb" type="text" value="${x.trustsWeb }" id="Trusts_Web" onchange="showWebError();" style="height:100%;width:70%">
    </td>
    <td>电子信箱</td>
    <td>
    <input name="xinxi.trustsEmile" type="text" value="${x.trustsEmile}" id="Trusts_Emile" onchange="showEmileError();" style="height:100%;width:70%">
    <span id="em" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td>法人代表</td>
    <td> 
    <input name="xinxi.clientFr" type="text"  value="${x.clientFr}" style="height:100%;width:99%">
    </td>
    <td>邮政编码</td>
    <td>
    <input name="xinxi.trustsPostcode" type="text" value="${x.trustsPostcode}" id="Trusts_Postcode" value="${user.trustsPostcode}" onchange="showPostcodeError();"style="height:100%;width:80%">
    <span id="pt" style="display: inline;"></span>
    </td>
  </tr>
  <tr>
    <td>联系人</td>
    <td > 
    <input name="xinxi.trustsContactor" type="text" value="${x.trustsContactor }" style="height:100%;width:99%" id="Trusts_Contactor">
    </td>
    <td>固定电话</td>
    <td>
    <input name="xinxi.trustsTelephone1" type="text" value="${x.trustsTelephone1 }" id="Trusts_Telephone1" style="height:100%;width:70%">
     </td>
  </tr>
    <tr>
   <td>手机</td>
   <td>
   <input name="xinxi.trustsTelephone2" type="text" value="${x.trustsTelephone2 }">
   <span id="ph" style="display: inline;"></span>
   </td>
    <td>传真</td>
    <td>
    <input name="xinxi.trustsFax" type="text" value="${x.trustsFax }" style="height:100%;width:99%">
    </td>
  </tr>
  <tr>
    <td>机构属性</td>
    <td colspan="3">
     <input type="radio" name="xinxi.trustsNature" value="企业" id="Trusts_Nature" />企业
          <input type="radio" name="xinxi.trustsNature" value="高等院校" id="Trusts_Nature"/>高等院校
          <input type="radio" name="xinxi.trustsNature" value="研究机构" id="Trusts_Nature" />研究机构
          <input type="radio" name="xinxi.trustsNature" value="其他" id="Trusts_Nature" />其他
    ${x.trustsNature }
    </td>
  </tr>

  <tr>
   <td colspan="4" height="50px"><span>*</span>机构简介（单位基本情况，研究基础等，限500字）<br>
         <textarea  name="xinxi.trustsInd" style="width:995px;height:100px;line-height:30px;" id="Trusts_Ind" onKeyDown="gbcount(this.form.Trusts_Ind,this.form.total,this.form.used,this.form.remain);" onKeyUp="gbcount(this.form.Trusts_Ind,this.form.total,this.form.used,this.form.remain);">
          ${x.trustsInd}
        </textarea>
        <p>最多字数： 
            <input disabled maxLength="4" name="total" size="3" value="500" class="inputtext"> 
                                 已用字数： 
           <input disabled maxLength="4" name="used" size="3" value="0" class="inputtext"> 
                                剩余字数： 
           <input disabled maxLength="4" name="remain" size="3" value="500" class="inputtext"> 
       </p> 
    </td>
  </tr>
  <tr>
    <td><span>*</span>技术需求名称</td>
    <td>
          <input name="xinxi.tecName" type="text" id="Tec_Name" value="${x.tecName}" style="height:100%;width:99%">
    </td>
    <td><span>*</span>需求时限</td>
    <td>
          <input name="xinxi.tecTime1" type="text" id="Tec_Time1" value=" ${x.tecTime1 }" size="10%" onchange="showTimeError();">年　至
          <input name="xinxi.tecTime2" type="text" id="Tec_Time2" value="${x.tecTime2} " size="10%" onchange="showError();">年 
          <%
          Date date1=new Date();
     	  SimpleDateFormat sdf1=new SimpleDateFormat("yyyy");
     	  String s2=sdf1.format(date1);
          %>
         <input type="hidden" name="time3" id="time3" value="<%=s2%>">
         <span id="tm" style="display: inline;"></span>
    </td>
  </tr>
 
    <tr>
    <td colspan="4"><span>*　</span>重大科技需求概述（限2000字以内）<br>
        1、主要问题（需要解决的重大技术问题）
        <textarea  name="xinxi.tecContents" style="width:995px;height:200px;line-height:30px;" id="Tec_Contents" onpropertychange="TextUtil.NotMax(this)" maxlength="500">
        ${x.tecContents} 
        </textarea><br>
       2、技术关键（所需的关键技术、主要指标）
        <textarea  name="xinxi.trustsInd1" style="width:995px;height:200px;line-height:30px;" id="Trusts_Ind1" onpropertychange="TextUtil.NotMax(this)" maxlength="500">
        ${x.trustsInd1 }
        </textarea><br>
       3、预期目标（技术创新性、经济社会效益）
        <textarea  name="xinxi.zj2" style="width:995px;height:200px;line-height:30px;" id="zj2" onpropertychange="TextUtil.NotMax(this)" maxlength="500">
         ${x.zj2}
        </textarea>
   
  </tr>
  <tr >
  <td colspan="4">
        关键字(1-5个字)
        <input name="xinxi.gjz" type="text" id="gjz" value=" ${x.gjz}" size="10" onkeydown="k(gjz2)" onchange="keycount(gjz2)">   
        <input name="xinxi.gjz2" type="text" id="gjz2" value="${x.gjz2 }" size="10" style="display:none" onkeydown="k(gjz3)" onchange="keycount(gjz3)">   
        <input name="xinxi.gjz3" type="text" id="gjz3" value=" ${x.gjz3}" size="10" style="display:none" onkeydown="k(gjz4)" onchange="keycount(gjz4)">   
        <input name="xinxi.gjz4" type="text" id="gjz4" value=" ${x.gjz4}" size="10" style="display:none" onkeydown="k(gjz5)" onchange="keycount(gjz5)">   
        <input name="xinxi.gjz5" type="text" id="gjz5" value=" ${x.gjz5}" size="10" style="display:none">   
  </td>
          
  </tr>
  <tr >
    <td>
          <span>*</span>拟投入资金总额
    </td>
    <td colspan="3">
          <input name="xinxi.zj1" type="text" id="zj1" value="${x.zj1} " style="height:100%;width:80%" onchange="check1();">万元
    </td> 
  </tr>
   <tr>
    <td rowspan="2"><span>*</span>技术需求解决方式</td>
    <td colspan="3">
         ${x.tecMode }
          <input type="radio" name="xinxi.tecMode" value="独立研发" id="Tec_Mode" />独立研发
          <input type="radio" name="xinxi.tecMode" value="委托研发" id="Tec_Mode" />委托研发
          <input type="radio" name="xinxi.tecMode" value="合作研发" id="Tec_Mode" />合作研发
          <input type="radio" name="xinxi.tecMode" value="其他" id="Tec_Mode" />其他  
    </td>
  </tr>
 
  <tr>
    <td>合作意向单位</td>
    <td colspan="2">
         <input name="xinxi.yxDw" type="text" id="Yx_Dw" value=" ${x.yxDw }" style="height:100%;width:85%"><span>（选填）</span>
    </td>
  </tr>
  
   <tr>
    <td ><span>*</span>科技活动类型 </td>
    <td colspan="3">
         ${x.tecType }
      
         <input type="radio" name="xinxi.tecType" id="1" value="基础研究" onchange="show()"/>基础研究
          <input type="radio" name="xinxi.tecType" id="2" value="应用研究" onchange="show()"/>应用研究
          <input type="radio" name="xinxi.tecType" id="3" value="试验发展" onchange="show()"/>试验发展
          <input type="radio" name="xinxi.tecType" id="4" value="研究发展与成果应用" onchange="show()"/>研究发展与成果应用
          <input type="radio" name="xinxi.tecType" id="5" value="技术推广与科技服务 " onchange="show()"/>技术推广与科技服务       
          <input type="radio" name="xinxi.tecType" id="5" value="生产性活动 " onchange="show()"/>生产性活动 
     
    </td>
  </tr>
  <tr>
			<td>学科分类
			</td>
			<td>
			  <input name="xinxi.subType" type="text" id="fir" value="${x.subType }" />
			</td>
		</tr>
   
    <tr>
    <td>需求技术所属领域<br>（非基础研究填写）</td>
    <td colspan="3">
    ${x.tecFiled }
          <input type="radio" name="xinxi.tecFiled" value="电子信息技术" id="e1"/>电子信息技术
          <input type="radio" name="xinxi.tecFiled" value="光机电一体化" id="e2"/>光机电一体化
          <input type="radio" name="xinxi.tecFiled" value="软件" id="e3"/>软件
          <input type="radio" name="xinxi.tecFiled" value="生物制药技术" id="e4"/>生物制药技术<br>
          <input type="radio" name="xinxi.tecFiled" value="新材料及应用技术" id="e5"/>新材料及应用技术  
          <input type="radio" name="xinxi.tecFiled" value="先进制造技术" id="e6"/>先进制造技术
          <input type="radio" name="xinxi.tecFiled" value="现代农业技术 " id="e7"/>现代农业技术  <br> 
          <input type="radio" name="xinxi.tecFiled" value="新能源与高效节能技术" id="e8"/>新能源与高效节能技术  
          <input type="radio" name="xinxi.tecFiled" value="资源与环境保护新技术" id="e9"/>资源与环境保护新技术
          <input type="radio" name="xinxi.tecFiled" value="其他" id="e0"/>其他（注明）
    
    </td>
  </tr>
  
  <!-- -----------------需求技术应用行业------------------------ -->
  <tr>
	      <td>需求技术应用行业<i class="red">*</i> </td>
	      <td colspan="3">
	       <select name="fir_h" id="fir_h" onchange="getSecondGmjjhys()">
		     <option>-----请选择-----</option>
		   </select>
	       <select name="sec_h" id="sec_h" onchange="getThirdGmjjhys()">
           <option>-----请选择-----</option>
           </select>
	       <select name="thi_h" id="thi_h" onchange="inputGmjjhy()">
           <option>-----请选择-----</option>
           </select>
      	   <input name="xinxi.tecIndustry" type="hidden" id="GMJJHY" value="${x.tecIndustry }"/>
      </td>
		</tr>   
		 
   </c:forEach>
   <tr>
       <td colspan="4" align="center">
         <br>
                <input type="submit"  value="保存" onclick="return confirm('确定修改？');"/>
       </td>
   </tr>  
</table> 
 </form>
  </body>
</html>
