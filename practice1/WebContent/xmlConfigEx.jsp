<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xml - Config param 예제</title>
</head>
<body>
	<%!
		String adminID;
		String adminPw;
	%>
	
	<%
		/* config = 전역객체. 별도의 설정 불필요.
			getServletConfig().getInitParameter() 로도 대체 가능
			
			아래 param 은 web.xml 에서 init-param 으로 서블릿을 특정하여 설정했기 때문에,
			다른 JSP, Servlet 에서는 참조가 불가하다. (해당 서블릿만 참조 가능)
		*/
		adminID = config.getInitParameter("adminId");
		adminPw = config.getInitParameter("adminPw");
	%>
	
	<p>ID : <%= adminID %></p>
	<p>PW : <%= adminPw %></p>
	
	
	<%!
		String imgDir;
		String devIp;
	%>
	
	<%
		/* web.xml 에서 context-param 으로 설정한 값은 전역객체 'application' 으로 참조 가능.
		해당 JSP 뿐만 아니라 다른 JSP 에서도 동일하게 참조가 가능하다. */
		devIp = application.getInitParameter("developIP");	
		imgDir = application.getInitParameter("imgDir");
	%>
	<p>DEV : <%= devIp %></p>
	<p>img dir : <%= imgDir %></p>
	
	<%!
		String setAppAttr1;
		String setAppAttr2;
	%>
	<%	
		application.setAttribute("connectedIp", "165.1.1.23");
		application.setAttribute("connectedUser", "홍길동");
		
		/* setAttribute 의 setting  type이 object 여서 (String) 으로 변환 */
		setAppAttr1 = (String)application.getAttribute("connectedIp");
		setAppAttr2 = (String)application.getAttribute("connectedUser");
	%>
	
	<p>application - setAttribute1 : <%= setAppAttr1 %></p>
	<p>application - setAttribute2 : <%= setAppAttr2 %></p>



	<%
		/* out 객체 - 출력을 위한 내장객체. 아래처럼 코딩하면 컴파일 후 HTML 태그가 출력 됨 */
		out.print("<h1>Hello JSP !!</h1>");
	%>
</body>
</html>