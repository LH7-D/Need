<%@ page language="java" contentType="text/html; charset=utf-8" import="com.ssh.entity.*,org.hibernate.Criteria,org.hibernate.Session,org.hibernate.criterion.Restrictions,java.util.*"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aa.jsp' starting page</title>
    
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

  </head>
  
  <body>
    	<center>
	<table align="center" width="100%" id="exampletable">
	<thead>
		<tr  style="background:#bbffee; font-family:SimHei;">
			 <th>需求技术应用行业</th>
				<th>需求编号</th>
				<th>公司名称</th>
				<th>需求名称</th>
				<th>归口管理部门</th> 
				<th>联系人</th> 
		</tr>
	</thead>
	       <%	
				List requirementList = (List)request.getAttribute("requirementList");
				if(requirementList == null)
				{
					System.out.println("null");
				}
				else
				{
					Iterator it = requirementList.iterator();
					while(it.hasNext())
					{
						Xinxi require = new Xinxi();
						require = (Xinxi)(it.next());
			 %>
			 <tr>
			    <td><%=require.getTecIndustry() %></td>
			 	<td><%=require.getNum() %> </td>
			 	<td><%=require.getTrusterName() %></td>
			 	<td><%=require.getTecName() %></td>
			 	<td><%=require.getTrustsAdmin() %></td>
			 	<td><%=require.getTrustsContactor() %></td>
			 	
			 </tr>
			 <%
			 		}
			 	}
			  %>
	
	</table><a href="gjquery.jsp">返回</a>
	</center>
	<script type="text/javascript">
$(function() {
	$("#exampletable").slimtable();
});
</script>
  </body>
</html>
