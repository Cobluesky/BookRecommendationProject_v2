<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/admin_userManage.css">
	<link rel="stylesheet" href="css/paging.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<div class="userManage">
				<h2>회원관리</h2>
				<div class="insert-btn">
					<input type="button" value="회원추가▼">
				</div>
				<div class="insertUser">
					<input type="text" placeholder="아이디">
					<input type="text" placeholder="비밀번호">
					<input type="text" placeholder="이름">
					<input type="text" placeholder="성별">
					<div class="genderInput">
						<label>성별</label>
						<div>
							<input type="radio" name="gender" value="male" checked>남
							<input type="radio" name="gender" value="female">여
						</div>
					</div>
					<input type="text" placeholder="이메일">
					<input type="button" value="추가">
				</div>
				<div class="manageTable">
					<div class="userTh">
						<p>회원번호</p>
						<p>아이디</p>
						<p>이름</p>
						<p>성별</p>
						<p>전화번호</p>
						<p>이메일</p>
						<p>관리</p>
					</div>
					<div class="userInfoTable">
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
						<ul class="userInfo">
							<li class="userId">회원번호</li>
							<li>아이디</li>
							<li>이름</li>
							<li>성별</li>
							<li>전화번호</li>
							<li>이메일</li>
							<li>
								<input type="button" value="수정">
								<input type="button" value="삭제">
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>

	<script src="script/jquery-3.5.1.min.js"></script>
	<script src="script/paging_um.js"></script>
	<script src="script/custom.js"></script>
</body>
</html>