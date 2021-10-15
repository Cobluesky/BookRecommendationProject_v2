<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/join.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<h3>회원가입</h3>
			<form name="join" action="register.do" method="GET">
				<div class="row">
					<div class="field">
						<label for="">아이디<em>*</em></label>
						<input type="text" name = "joinid" required>
					</div>
					<div class="field">
						<label for="">비밀번호<em>*</em></label>
						<input type="password" name = "joinpw" required>
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="">이름<em>*</em></label>
						<input type="text" name = "joinname" required>
					</div>
					<div class="field">
						<label for="">이메일<em>*</em></label>
						<input type="email" name = "joinmail" required>
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="">전화번호<em>*</em></label>
						<input type="tel" required name="phoneNum" maxlength="13">
					</div>
					<div class="field">
						<label for="">성별<em>*</em></label>
						<div>
							<input type="radio" name="gender" value="남성" checked>남
							<input type="radio" name="gender" value="여성">여
						</div>
						<label>역할<em>*</em></label>
						<div>
							<input type="radio" name = "role" value ="일반회원" required checked>일반회원
						</div>
					</div>
				</div>
				<input type="submit" name="submit" value="회원가입">
			</form>
		</div>
		<%@ include file="footer.jsp" %>
	</div>
</html>