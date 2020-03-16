package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("Filter destroy");		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter run");
		request.setCharacterEncoding("UTF-8"); // 전달받은 Reqeust 객체 Charset 설정
		chain.doFilter(request, response); // filter Chain 연결, request, response 연결
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter Init");
	}
}
