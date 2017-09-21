<%@ page language="java" contentType="text/html; charset=utf-8" import="com.ssh.entity.*,org.hibernate.Criteria,org.hibernate.Session,org.hibernate.criterion.Restrictions,java.util.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="jiaoben1286-fenye/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="jiaoben1286-fenye/js/slimtable.min.js"></script>
     <link rel="stylesheet" href="css/slimtable.css">
  

<title>查看我的需求</title>
<style>
   table{
       width:900px;
   }
</style>
</head>
<body>
	<center>
       <br><br>
		<table align="center" width="100%" id="exampletable">
		<thead>	
			<tr  style="background:#bbffee; font-family:SimHei;" >
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
				int size=requirementList.size();
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
		</table>
	</center>
	<script type="text/javascript">
$(function() {
	$("#exampletable").slimtable();
});
</script>
</body>
</html>