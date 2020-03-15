<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입페이지</title>
</head>
<body>

	<!-- 전달되어 온 값을 담을 멤버변수 선언 -->
	<%!
		String name;
		String password;
		String gender;		
		String[] hobby;
		String locale;
	%>
	
	<!-- 사용자가 html에서 전달한 내용을 전달받을 Request 객체 -->
	<%
		name = request.getParameter("m_name");
		password = request.getParameter("m_password");
		gender = request.getParameter("m_gender");
		hobby = request.getParameterValues("m_hobby");
		locale = request.getParameter("m_locale");
	%>
	
	<p>m_name= <%= name %></p>
	<p>m_password= <%= password %></p>
	<p>m_gender = <%= gender %></p>
	<p>m_hobby = <br />
		<% for ( int i =0; i < hobby.length; i++) { %>
		<span><%= i + 1 %>. <%= hobby[i] %></span><br />						
		<% } %>
	</p>
	<p>m_locale = <%= locale %></p>
</body>
</html>