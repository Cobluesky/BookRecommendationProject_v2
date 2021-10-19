
package com.shop.view.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.user.MemberDto;
import com.shop.user.Impl.MemberDao;

@WebServlet("/register.do")
public class JoinController extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("joinid");
		String pw = request.getParameter("joinpw");
		String name = request.getParameter("joinname");
		String role = request.getParameter("role");
		String mail = request.getParameter("joinmail");
		String phonenumber = request.getParameter("phoneNum");
		String gender = request.getParameter("gender");
		

		MemberDto mDto = new MemberDto();
		mDto.setId(id);
		mDto.setPassword(pw);
		mDto.setName(name);
		mDto.setMail(mail);
		mDto.setPhonenumber(phonenumber);
		mDto.setGender(gender);
		mDto.setRole(role);		
		
		MemberDao mDao = new MemberDao();	
		boolean insertCheck = mDao.memberInsert(mDto);

	    if(insertCheck){
	    	request.setAttribute("joinResult", insertCheck);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", id);
			session.setAttribute("roleKey", role);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);

		}else{
	    	request.setAttribute("joinResult", 0);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/join.jsp");
			dispatcher.forward(request, response);
		}	   
	}
}

