<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login(Cookie test)</title>
</head>
<body>
	
	<%
		Cookie[] cookies = request.getCookies();	
		System.out.println("cookies : " + cookies);
		
		if ( cookies != null ) {
			for(Cookie c : cookies) {
				// memberId 에 해당하는 쿠키가 존재할 경우, 지정된 페이지로 리다이렉트
				if (c.getName().equals("memberId") ) {	
					response.sendRedirect("cookieLoginOk.jsp");
				}
			}
		}
	%>
	
	
	<form action="cookieLogin" method="post">
		<p>ID : <input type="text" name="mId"></p>
	    <p>Password : <input type="password" name="mPw"></p>
	    <button type="submit">Login</button>
    </form>

</body>
</html>