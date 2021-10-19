<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="com.shop.user.Impl.MemberDao"
	import="com.shop.user.MemberDto"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/my_page.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">
</head>

<body>
	<div id="wrap">
		<header>
			<%@ include file="Top.jsp" %>
			<div class="logo">
				<a href="index.jsp">
					<h2>ThornBooks</h2>
				</a>
			</div>
			<div class="search">
				<input type="text" placeholder="Search">
				<button></button>
			</div>
		</header>
		
		<div class="container">
			<div class="mypage-content">
				<h2>마이페이지</h2>
				<form name="mypageUpdate" action="mypage.do" method="GET">
				<div class="common-info">
					<h3>기본정보</h3>
					<p>이름: <input type="text" name = "name"></p>
					<hr>
					<p>성별: <input type="text" name = "gender"></p>
				</div>
				<div class="contact-info">
					<h3>연락처 정보</h3>
					<p>전화번호: <input type="text" name = "phonenumber"></p>
					<hr>
					<p>이메일: <input type="text" name = "email"></p>
				</div>
				<input type="submit" value="수정">
				</form>
			</div>
		</div>
		<footer>
			<div class="footer-inner">
				<div class="footer-logo">
					<a href="index.jsp">ThornBooks</a>
				</div>
				<div class="copyright">
					<p>
					사업자 등록번호: 1234-1234<br>
					대표전화:1234-1234<br>
					인천광역시
					</p>
				</div>
				<div class="sns">
					<a href="#none"><img src="images/facebook.png" alt="facebook"></a>
					<a href="#none"><img src="images/kakao-talk.png" alt="kakao-talk"></a>
					<a href="#none"><img src="images/twitter.png" alt="twitter"></a>
				</div>
			</div>
		</footer>
	</div>

	<script src="script/jquery-3.5.1.min.js"></script>
	<script src="script/search.js"></script>
	<script src="script/custom.js"></script>
</body>
</html>