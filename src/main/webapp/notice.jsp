<%@page import="com.shop.board.Impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" import="java.sql.Date"
	import="com.shop.board.controller.*" import="com.shop.board.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta charset="UTF-8">
<title>ThornBooks</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/notice.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<div class="container">
			<div class="notice">
				<h2>공지사항</h2>
				<div class="notice-header">
					<div>
						<%
						BoardVO bVo = new BoardVO();
						BoardDAO bDao = new BoardDAO();
						try {
							int id = 0;
							id = Integer.parseInt(request.getParameter("BoardId"));
							bVo.setBoardId(id);
							bVo = (BoardVO) bDao.getBoard(bVo);
							bDao.viewCount(bVo);
						} catch (NumberFormatException e) {
								response.sendRedirect("index.jsp");
						}
						
						%>
						<div class="notice-title">
							<div class="notice-attr">제목</div>
							<div class="notice-val"><%=bVo.getBoardTitle()%></div>
						</div>
						<div class="notice-views">
							<div class="notice-attr">조회수</div>
							<div class="notice-val"><%=bVo.getBoardHits()%></div>
						</div>
					</div>
					<div>
						<div class="notice-writer">
							<div class="notice-attr">작성자</div>
							<div class="notice-val"><%=bVo.getBoardAuthor()%></div>
						</div>
						<div class="notice-date">
							<div class="notice-attr">작성일</div>
							<div class="notice-val"><%=bVo.getBoardDate()%></div>
						</div>
					</div>
				</div>
				<div class="notice-contents">
					<p>
						<%=bVo.getBoardContent()%>
					</p>
				</div>
				<div class="notice-btn">
					<a href="admin_notice.jsp"> <input type="button" value="목록">
					</a>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
