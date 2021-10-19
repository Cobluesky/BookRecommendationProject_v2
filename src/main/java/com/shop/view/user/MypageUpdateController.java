package com.shop.view.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.user.MemberDto;
import com.shop.user.Impl.MemberDao;

@WebServlet("/mypage.do")
public class MypageUpdateController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDao mDao = new MemberDao();
		MemberDto mDto = new MemberDto();

		String id = (String)session.getAttribute("idKey");
		String name = request.getParameter("name");
		String phoneNum = request.getParameter("phonenumber");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");

		request.setCharacterEncoding("UTF-8");
		mDto = mDao.getUserInfo(id);

		if (name.equals("")) {
			name = mDto.getName();
		}
		if (phoneNum.equals("")) {
			phoneNum = mDto.getPhonenumber();
		}
		if (gender.equals("")) {
			gender = mDto.getGender();
		}
		if (email.equals("")) {
			email = mDto.getMail();
		}
		
		mDto.setName(name);
		mDto.setPhonenumber(phoneNum);
		mDto.setGender(gender);
		mDto.setMail(email);
		
		boolean updateCheck = mDao.memberUpdate(mDto);
		
		if(updateCheck) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("my_page.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
	}
}