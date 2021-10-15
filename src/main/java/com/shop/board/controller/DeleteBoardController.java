package com.shop.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.board.BoardVO;
import com.shop.board.Impl.BoardDAO;
import com.shop.view.controller.Controller;



public class DeleteBoardController implements Controller {

	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("글 삭제 처리");
		
		// 1. 사용자 입력 정보 추출
		String seq = request.getParameter("BoardHits");
		
		// 2. DB 연동 처리
		BoardVO vo = new BoardVO();
		vo.setBoardHits(Integer.parseInt(seq));
		
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(vo);
		
		// 3. 화면 네비게이션
		return "getBoardList.do";
	}

}
