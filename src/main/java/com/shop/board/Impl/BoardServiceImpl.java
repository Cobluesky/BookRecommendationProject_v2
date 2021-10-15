package com.shop.board.Impl;

import java.util.List;

import com.shop.board.BoardService;
import com.shop.board.BoardVO;

public class BoardServiceImpl implements BoardService {
	private BoardDAO boardDAO;

	public void insertBoard(BoardVO vo) {
//		if (vo.getSeq() == 0) {
//			throw new IllegalArgumentException("0占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占� 占쏙옙 占쏙옙占쏙옙占싹댐옙.");
//		}
		boardDAO.insertBoard(vo);
		boardDAO.insertBoard(vo); 
	}

	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}
}