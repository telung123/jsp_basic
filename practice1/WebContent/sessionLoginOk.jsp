<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
</head>
<body>

	<%
		session = request.getSession();
		out.print("memberId : "+ session.getAttribute("memberId") + "님 환영홥니다.");
	%>
	
	<form action="logoutCon" method="get">
		<input type="submit"  value="로그아웃" />
	</form>

</body>
</html>