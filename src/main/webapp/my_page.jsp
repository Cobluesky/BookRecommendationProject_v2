<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/my_page.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<div class="mypage-content">
				<h2>마이페이지</h2>
				<div class="common-info">
					<h3>기본정보</h3>
					<p>이름:</p>
					<hr>
					<p>성별:</p>
				</div>
				<div class="contact-info">
					<h3>연락처 정보</h3>
					<p>전화번호:</p>
					<hr>
					<p>이메일:</p>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>