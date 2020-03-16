package com.session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLogout
 */
@WebServlet("/logoutCon")
public class SessionLogout extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// logout - session invalidate 처리
		HttpSession session = request.getSession();
		session.invalidate(); // session 삭제
		
		response.sendRedirect("loginSession.jsp"); // 로그아웃 후 login 페이지로 이동
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
