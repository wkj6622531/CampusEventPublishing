<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@page import="model.stuInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <jsp:include page="isSuperUser.jsp"></jsp:include>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifystuinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body background="images/newhead.jpg" style="background-size: cover;">
	<jsp:useBean id="stuSer" class="Service.stuInfoService"></jsp:useBean>
	<%
		List stus = stuSer.queryAllStu();
		// out.print(stus.size());  
		Iterator iter = stus.iterator();
	%>
	<table>
		<tr>
			<td style="color: white;">id</td>
			<td style="color: white;">昵称</td>
			<td style="color: white;">真实姓名</td>
			<td style="color: white;">性别</td>
			<td style="color: white;">出生日期</td>
			<td style="color: white;">所在专业</td>
			<td style="color: white;">所选课程</td>
			<td style="color: white;">兴趣</td>
			<td style="color: white;">备注</td>
			<td style="color: white;"></td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				stuInfo student = (stuInfo) iter.next();
		%>
		<tr <%if (true) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%=student.getId()%></td>
			<td><%=student.getNicheng()%></td>
			<td><%=student.getTruename()%></td>
			<td>
				<%
					if (student.getXb() == 1)
							out.print("男");
						else
							out.print("女");
				%>
			</td>
			<td><%=student.getCsrq()%></td>
			<td><%=student.getZy()%></td>
			<td><%=student.getKcs()%></td>
			<td><%=student.getXqs()%></td>
			<td><%=student.getBz()%></td>
			<td><a href="modifyOneStu.jsp?id=<%=student.getId()%>">修改</a></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>
