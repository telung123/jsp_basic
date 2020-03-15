<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP response : first</title>
</head>
<body>

	<p>First page</p>
	
	<%
		response.sendRedirect("secondPage.jsp");
	%>
</body>
</html>