package com.shop.board;

import java.sql.Date;

public class BoardVO {
	private int BoardId;
	private String BoardTitle;
	private String BoardContent;
	private String BoardAuthor;
	private Date BoardDate;
	private int BoardHits;
	
	public int getBoardId() {
		return BoardId;
	}
	public void setBoardId(int boardId) {
		BoardId = boardId;
	}
	public String getBoardTitle() {
		return BoardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		BoardTitle = boardTitle;
	}
	public String getBoardContent() {
		return BoardContent;
	}
	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}
	public String getBoardAuthor() {
		return BoardAuthor;
	}
	public void setBoardAuthor(String boardAuthor) {
		BoardAuthor = boardAuthor;
	}
	public Date getBoardDate() {
		return BoardDate;
	}
	public void setBoardDate(Date date) {
		BoardDate = date;
	}
	public int getBoardHits() {
		return BoardHits;
	}
	public void setBoardHits(int boardHits) {
		BoardHits = boardHits;
	}

}
