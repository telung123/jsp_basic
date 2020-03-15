<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - login OK</title>
</head>
<body>
	<%
		// 넘어온 Cookie 확인
		Cookie[] cookies = request.getCookies();
	
		for (Cookie c : cookies) {
			out.print("name : " + c.getName() + " / value : " + c.getValue()+"<br />");
		}	
	%>
	
	
	<h1>환영합니다.</h1>

</body>
</html>