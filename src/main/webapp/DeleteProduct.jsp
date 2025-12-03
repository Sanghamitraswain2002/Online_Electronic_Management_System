<%@page import="com.ani.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
			<h2>
				<%
					AdminBean abean=(AdminBean)session.getAttribute("AdminBean");
					String data = (String)request.getAttribute("msg");
					out.println("Hello "+abean.getA_fname()+"<br>");
					out.println("<center><h2>"+data+"</h2></center>");
				%>
			
			</h2>
			<jsp:include page="AdminHome.jsp"></jsp:include>
</body>
</html>