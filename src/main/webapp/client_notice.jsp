<%@page import="com.shop.board.Impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="java.sql.Date"
	import="com.shop.board.controller.*"
	import="com.shop.board.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/admin_notice.css">
	<link rel="stylesheet" href="css/paging.css">
</head>
<body>
	<div id="wrap">
	
	
		<%@ include file="header.jsp" %>
		<form action="getBoardList.do" method="post">
		<div class="container">
			<div class="noticeManage">
				<h2>공지사항</h2>
				<div class="manageTable">
					<div class="userTh">
						<p>No</p>
						<p>제목</p>
						<p>작성자</p>
						<p>날짜</p>
						<p>조회수</p>
						<p>관리</p>
					</div>
					<div class="userInfoTable">
					
					<%
						BoardVO bVo = new BoardVO();
						BoardDAO bDao = new BoardDAO(); 
						List<BoardVO>boardList = bDao.getBoardList(bVo);
						
						for(int i=0; i < boardList.size(); i++){							
							BoardVO vo = (BoardVO)boardList.get(i);
							
							int bId = vo.getBoardId();
							String bTit = vo.getBoardTitle();
							String bAtr = vo.getBoardAuthor();
							Date bDate = vo.getBoardDate();
							int bHits = vo.getBoardHits();
					%>
						<ul class="userInfo">
							<li><%=bId%></li>
							<li><a href="notice.jsp?BoardId=<%=Integer.toString(bId)%>"><%=bTit%></a></li>
							<li><%=bAtr%></li>
							<li><%=bDate%></li>
							<li><%=bHits%></li>
						</ul>
					<%
						}
					%>
					
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
		</form>
	</div>
	
	<script src="script/jquery-3.5.1.min.js"></script>
	<script src="script/paging_um.js"></script>
</body>
</html>
