<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - session Test</title>
</head>
<body>

	<%
		// Session 유무 파악
		if (session.getAttribute("memberId") != null) {
			response.sendRedirect("sessionLoginOk.jsp");
		}
	%>
	<form action="loginCon" method="post">
		ID : <input type="text" name="smId" /><br />
		PW : <input type="password" name="smPw" />
		<button type="submit">Login</button>
	</form>

</body>
</html>