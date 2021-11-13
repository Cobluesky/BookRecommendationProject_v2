package com.shop.board.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.shop.common.*;

import com.shop.board.BoardVO;
public class BoardDAO {
	// JDBC 愿��젴 蹂��닔
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	// SQL 紐낅졊�뼱�뱾
	private final String BOARD_INSERT = "insert into BoardTable (BoardId, BoardTitle, BoardContent, BoardAuthor, BoardDate, BoardHits) "
										+ "values((select boardid from boardtable ALIAS_FOR_SUBQUERY order by boardid desc limit 1)+1, ?, ?, ?, now(), 0)";
	private final String BOARD_UPDATE = "update BoardTable set BoardTitle=?, BoardContent=? where BoardId=?";
	private final String BOARD_DELETE = "delete BoardTable where BoardId=?";
	private final String BOARD_GET = "select * from BoardTable where BoardId=?";
	private final String BOARD_LIST = "select * from BoardTable order by BoardId desc";

	// CRUD 湲곕뒫�쓽 硫붿냼�뱶 援ы쁽
	// 湲� �벑濡�
	public void insertBoard(BoardVO vo) {
		System.out.println("===> JDBC Insertboard 처리");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getBoardTitle());
			stmt.setString(2, vo.getBoardContent());
			stmt.setString(3, vo.getBoardAuthor());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}

	// 湲� �닔�젙
	public void updateBoard(BoardVO vo) {
		System.out.println("===> JDBC濡� updateBoard() 湲곕뒫 泥섎━");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getBoardTitle());
			stmt.setString(2, vo.getBoardContent());
			stmt.setInt(3, vo.getBoardId());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}

	// 湲� �궘�젣
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> JDBC濡� deleteBoard() 湲곕뒫 泥섎━");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getBoardId());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}

	// 湲� �긽�꽭 議고쉶
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> JDBC濡� getBoard() 湲곕뒫 泥섎━");
		BoardVO board = null;
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, vo.getBoardId());
			rs = stmt.executeQuery();
			if (rs.next()) {
				board = new BoardVO();
				board.setBoardId(rs.getInt("BoardId"));
				board.setBoardTitle(rs.getString("BoardTitle"));
				board.setBoardAuthor(rs.getString("BoardAuthor"));
				board.setBoardContent(rs.getString("BoardContent"));
				board.setBoardDate(rs.getDate("BoardDate"));
				board.setBoardHits(rs.getInt("BoardHits"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(conn, stmt, rs);
		}
		return board;
	}

	// 湲� 紐⑸줉 議고쉶
	// 	private final String BOARD_LIST = "select * from board order by seq desc";
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> JDBC濡� getBoardList() 湲곕뒫 泥섎━");
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setBoardId(rs.getInt("BoardId"));
				board.setBoardTitle(rs.getString("BoardTitle"));
				board.setBoardAuthor(rs.getString("BoardAuthor"));
				board.setBoardContent(rs.getString("BoardContent"));
				board.setBoardDate(rs.getDate("BoardDate"));
				board.setBoardHits(rs.getInt("BoardHits"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(conn, stmt, rs);
		}
		return boardList;
	}
	
	//議고쉶�닔 異붽� �븿�닔
	public void viewCount(BoardVO vo) {
		System.out.println("===> JDBC濡� viewCount() 湲곕뒫 泥섎━");
		try {
			conn = JDBCConnection.getConnection();
			stmt = conn.prepareStatement("update boardtable set boardhits=? where boardid=?");
			
			vo.setBoardHits(vo.getBoardHits() + 1);
			stmt.setInt(1, vo.getBoardHits());
			stmt.setInt(2, vo.getBoardId());
			stmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCConnection.close(stmt, conn);
		}
	}
}
