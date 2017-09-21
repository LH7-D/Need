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
    
     <title>多条件查询</title>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/gb.ResultPage.min.js?v=D59787997F3B8FCE" ></script>
    

</head>
<body onload="pageLoadDisableWordTimes();" onkeydown="if(event.keyCode==13) {SubmitKey();return false;}else{}">
    <form action="shenpi_queryBy.action" method="post">
       <h3>查询条件</h3>
 <dl id="searchdiv">  
  <dd class="divsearch" id="ddSubmit" name="ddSubmit" onkeydown="if(event.keyCode==13){SubmitForm();return false;}" >
      <div align="center"> 输入查询条件(最多选择7个)：</div>
   
        <table id="txt" align="center">
            <tr><td><input id="txt_i" value="1" type="hidden" name="txt_i" /></td>
            <td><input id="txt_c" value="7" type="hidden" name="txt_c" /></td></tr>
            <tr id="hidden_logical_txt" style="display:none">
                <td>
                    <select id="txt_1_logical" name="txt_1_logical">                      
                        <option value="and">并且</option>
                        <option value="or" >或者</option>
                        <option value="not">不含</option>
                    </select>
                </td>
            </tr>
            <tr id="txt_1" class="mainKey">
                <td class="aomBtn">
                    <a href="javascript:AddRowEx('txt','txt_i','txt_c');">
                        <img src='image/01.jpg' border="0" width="20px" height="20px"/>
                    </a><a href="javascript:DeleteRowSaveID('txt','txt_i','txt_c');">
                        <img src='image/02.jpg' border="0" width="20px" height="20px"/>
                    </a>
                </td>
                <td>
                  <select name="txt_1_sel" id="txt_1_sel"  onchange="disableWordTimes(this);return false;" class="selectW1">
                        <option value='gsname' selected>公司名称</option>
                        <option value='num'>需求编号</option>
                        <option value='bn'>归口管理部门</option>
                        <option value='title'>所属地域</option> 
                        <option value='mc'>技术需求名称 </option>
                        <option value='fname'>联系人</option>
                        <option value='time'>需求时间</option>         
                  </select>
                    
                    <!-- 输入条件 -->
                    <input  id="txt_1_value1" name="txt_1_value1" size="30"  value="${txt_1_value1 }"
                              maxlength="120" type="text" onFocus="if(KeywordVal(this.value)==false) this.value='';document.getElementById('currentid').value=this.id;"
                              onkeypress="SignVal(this,'sign',event)" onpaste="return SignVal(this,'value',event)"  onkeyup="SignVal1(this)"  />
                    
                    
                     <select id="txt_1_special1" name="txt_1_special1" onChange="">
                        <option value='%'>模糊</option>
                        <option value='' selected>精确</option>
                    </select>
                </td>
            </tr>
        </table>
      <input type="hidden" id="txt_1_extension" name ="txt_extension" value=""/>
      <input type="hidden" id="txt_2_extension" name ="txt_extension" value=""/>
      <input type="hidden" id="txt_3_extension" name ="txt_extension" value=""/>
      <input type="hidden" id="txt_4_extension" name ="txt_extension" value=""/>
      <input type="hidden" id="txt_5_extension" name ="txt_extension" value=""/>
      <input type="hidden" id="txt_6_extension" name ="txt_extension" value=""/>
      <input type="hidden" id="txt_7_extension" name ="txt_extension" value=""/>
   
  </dd>
</dl>
 <div class="btnPlace2" align="center">        
         <input type="submit" name="submit"   value="检索" style="margin-left:20px; margin-top:20px"  > 
         <a href="searchRequirement.jsp">高级检索</a>    
      </div>              
</form>

</body>
</html>
