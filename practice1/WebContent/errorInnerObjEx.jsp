<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 현재 JSP 에서 error가 나면 errorPage 로 보내라는 page 지시어 -->
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - exception Test</title>
</head>
<body>

	<%!
		String str; // Error 강제발생을 위해 선언만하고 초기화 안함 
	%>
	<%
		out.print(str.toString()); // 에러발생
	%>

</body>
</html>