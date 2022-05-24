package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;

public class GuestBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String action = request.getParameter("a");
		if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		} else if("add".equals(action)) {
			
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			GuestBookVo vo = new GuestBookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			new GuestBookDao().insert(vo);
//			response.sendRedirect("/guestbook02/gb");
			response.sendRedirect(request.getContextPath() +"/gb");
			
		} else if("delete".equals(action)){
			Long no = Long.parseLong(request.getParameter("no"));
			String password = request.getParameter("password");
			GuestBookVo vo = new GuestBookVo();
			vo.setNo(no);
			vo.setPassword(password);
			if(new GuestBookDao().delete(vo)){
				response.sendRedirect(request.getContextPath()+"/gb?a=index");
			}
			else{
				response.sendRedirect(request.getContextPath()+"/gb?a=deleteform&no="+no);
			}
			
		}else {
			List<GuestBookVo> list = new GuestBookDao().findAll();
			request.setAttribute("list", list); // 데이터 저장
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp"); // 어디로 갈지 적어줘야함. -> 포워딩 redirect와는 다른것임.
			rd.forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}