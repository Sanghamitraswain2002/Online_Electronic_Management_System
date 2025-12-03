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
			<h1>
				<%
					String msg = (String)request.getAttribute("msg");
					// out.println(msg);
					//response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
					response.sendError(405, msg);
				%>
				
				<%= msg %>
			</h1>
			<a href="AddProduct.html"
           style="display:block; padding:12px; width:20%; margin:10px 0;
                  background:#007bff; color:white; 
                  text-decoration:none; border-radius:8px;
                  font-size:16px;">Add Product</a>

        <a href="view1"
           style="display:block; padding:12px; width: 20%; margin:10px 0;
                  background:#28a745; color:white; 
                  text-decoration:none; border-radius:8px;
                  font-size:16px;">View Product</a>

        <a href="logout"
           style="display:block; padding:12px; width:20%; margin:10px 0;
                  background:#dc3545; color:white; 
                  text-decoration:none; border-radius:8px;
                  font-size:16px;">Logout</a>
</body>
</html>