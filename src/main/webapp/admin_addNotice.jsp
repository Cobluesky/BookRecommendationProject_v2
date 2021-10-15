<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/admin_addNotice.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<div class="addNotice-contents">
				<h2>공지사항 작성</h2>
				<div class="notice-header">
					<label for="">제목</label>
					<input type="text">
				</div>
				<div class="notice-contents">
					<label for="">내용</label>
					<textarea name="" id="" cols="120" rows="15"></textarea>
				</div>
				<div class="submit-btn">
					<input type="submit">
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>

</body>
</html>