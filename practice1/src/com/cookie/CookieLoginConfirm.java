package com.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletCookieLogin
 */
@WebServlet("/cookieLogin")
public class CookieLoginConfirm extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String mId = request.getParameter("mId");
		String mPw = request.getParameter("mPw");
		
		out.print("ID::" + mId + " / PW ::" + mPw);
		
		// Cookie 생성. 
		Cookie[] cookies = request.getCookies();
		Cookie cookie = null; // cookie 초기화
		
		for (Cookie c : cookies) {
			System.out.println("name : "+c.getName() + "/ value : " + c.getValue());

			// 일치하는 쿠키가 있는 경우 
			if( c.getName().equals("memberId")) {
				cookie = c;
				break;
			}
		}
		
		// Cookie 가 null 일 경우 (해당하는 Cookie 없거나, 최초접속일 때
		if ( cookie == null ) {
			System.out.println("Cookie is null");
			
			// 가져온 사용자 ID를 memberId 로 생성
			cookie = new Cookie("memberId", mId);
		}
		
		// 응답 ( cookie는 서버에 없기 때문에 위에서 만든 쿠키를 사용자단으로 response 넘겨줌
		response.addCookie(cookie);
		cookie.setMaxAge(60 * 60); // 쿠키 시간 설정 - 현재 설정시간은 1시간
		
		response.sendRedirect("cookieLoginOk.jsp"); // Redirect. 쿠키가 있으니까 login OK로 넘겨줌
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
