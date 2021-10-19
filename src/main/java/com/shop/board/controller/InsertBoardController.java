package com.shop.board.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.board.BoardVO;
import com.shop.board.Impl.BoardDAO;
import com.shop.view.controller.Controller;

@WebServlet("/insertBoard.do")
public class InsertBoardController extends HttpServlet implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("글 등록 처리");
		
		// 1. 사용자 입력 정보 추출
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		// 2. DB 연동 처리
		BoardVO vo = new BoardVO();
		vo.setBoardTitle(title);
		vo.setBoardAuthor(writer);
		vo.setBoardContent(content);
		
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.insertBoard(vo);
		
		// 3. 화면 네비게이션
		return "getBoardList.do";
	}

}
