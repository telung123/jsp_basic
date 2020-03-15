package com.servletdata;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletContextParamEx")
public class ServletContextParamEx extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ip = getServletContext().getInitParameter("developIP");
		String imgDir = getServletContext().getInitParameter("imgDir");
		PrintWriter out = response.getWriter();
		
		out.print("<p>DEV IP ::: "+ ip +"</p>");
		out.print("<p>IMG DIR ::: "+ imgDir +"</p>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
