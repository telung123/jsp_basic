<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글 전송 Test</title>
</head>
<body>

	<form action="krSignUp.jsp" method="post"><!-- Servlet 이 아닌 다른 JSP 로 보내는 예제 -->
		<p>이름 : <input type="text" name="name"></p>
		<p>닉네임 : <input type="text" name="nickname"></p>
		<input type="submit" value="가입">	
	</form>

</body>
</html>