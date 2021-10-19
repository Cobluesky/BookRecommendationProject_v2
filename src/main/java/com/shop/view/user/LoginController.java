package com.shop.view.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.user.Impl.MemberDao;
import com.shop.view.controller.Controller;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("username");
		String pw = request.getParameter("password");
		

		MemberDao mDao = new MemberDao();		
		boolean loginCheck = mDao.loginCheck(id, pw);

		//관리자페이지 링크를 위한 메소드 추가
		String role = mDao.roleInfo(id);
		
	    if(loginCheck == true){
	    	request.setAttribute("loginResult", loginCheck);
			HttpSession session = request.getSession();
			
			session.setAttribute("idKey", id);
			session.setAttribute("roleKey", role);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);

		}else{
		      response.sendRedirect("LogError.jsp");
		}		   		  
	}
}
