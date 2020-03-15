package com.servletdata;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletContextAttrEx")
public class ServletContextAttrEx extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Attribute 생성 - 아래처럼 설정한 attribute는 전역 설정되어 다른 Servlet 에서도 참조 가능하다.
		getServletContext().setAttribute("userName", "GabinKim. Bdog");
		String name = (String)getServletContext().getAttribute("userName");
		
		PrintWriter out = response.getWriter();
		out.print("<p>User name :: " + name+"</p>"); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
