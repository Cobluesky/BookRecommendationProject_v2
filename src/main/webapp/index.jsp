<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<div class="books">
				<div class="book">
					<a href="#none">
						<img src="images/book1.jpg" alt="book1">
						<span class="book-info">
							<span class="book-title">하늘위로 높이 뛰어봐</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book2.jpg" alt="book2">
						<span class="book-info">
							<span class="book-title">깊고 깊은 산골짜기에</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book3.jpg" alt="book3">
						<span class="book-info">
							<span class="book-title">꽃잎이 떨어지면</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book4.jpg" alt="book4">
						<span class="book-info">
							<span class="book-title">봄처럼 너에게 간다</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book5.jpg" alt="book5">
						<span class="book-info">
							<span class="book-title">프레임형 무료표지</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
				<div class="book">
					<a href="#none">
						<img src="images/book6.jpg" alt="book6">
						<span class="book-info">
							<span class="book-title">내가 담은 글</span>
							<span class="author">저자</span>
							<span class="summary">줄거리</span>
							<span class="price">가격</span>
						</span>
					</a>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>
	<script src="script/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src = "script/bundle4.js"></script>
</html>