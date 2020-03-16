<% request.setCharacterEncoding("UTF-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>한글 Test</title>
</head>
<body>
	<%!
		String m_name;
		String m_nickname;
	%>
	<%
		m_name = request.getParameter("name");
		m_nickname = request.getParameter("nickname");
	%>
	
	<p>이름 : <%= m_name %> / 닉네임 : <%= m_nickname %></p>

</body>
</html>