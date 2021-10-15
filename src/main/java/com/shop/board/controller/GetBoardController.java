package com.shop.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.board.BoardVO;
import com.shop.board.Impl.BoardDAO;
import com.shop.view.controller.Controller;

public class GetBoardController implements Controller {

	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("글 상세 조회 처리");
		
		// 1. 검색할 게시글 번호 추출
		String hits = request.getParameter("BoardHits");
		
		// 2. DB 연동 처리
		com.shop.board.BoardVO vo = new BoardVO();
		vo.setBoardHits(Integer.parseInt(hits));
		
		BoardDAO boardDAO = new BoardDAO();
		BoardVO board = boardDAO.getBoard(vo);
		
		// 3. 검색 결과를 세션에 저장하고 상세 화면을 리턴
		HttpSession session = request.getSession();
		session.setAttribute("board", board);
		return "getBoard";
	}

}
