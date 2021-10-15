<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>ThornBooks</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/notice.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="header.jsp" %>
		<div class="container">
			<div class="notice">
				<h2>공지사항</h2>
				<div class="notice-header">
					<div>
						<div class="notice-title">
							<div class="notice-attr">제목</div>
							<div class="notice-val">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, molestiae.</div>
						</div>
						<div class="notice-views">
							<div class="notice-attr">조회수</div>
							<div class="notice-val">100</div>
						</div>
					</div>
					<div>
						<div class="notice-writer">
							<div class="notice-attr">작성자</div>
							<div class="notice-val">관리자</div>
						</div>
						<div class="notice-date">
							<div class="notice-attr">작성일</div>
							<div class="notice-val">2021-10-05</div>
						</div>
					</div>
				</div>
				<div class="notice-contents">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore itaque architecto dolorum harum autem eaque possimus illo? Minima vitae est, facere architecto hic, error ea molestiae veritatis illo ab dicta, culpa consequuntur doloremque temporibus sint. Praesentium sit nobis quidem magnam officiis vel illum ex, dicta veniam nulla cum dignissimos blanditiis inventore ea, rerum eligendi consequuntur. Voluptates saepe sequi fugiat delectus quidem maiores ipsum, beatae veritatis! Facilis consequatur facere consectetur, dolor voluptatum, error libero veritatis excepturi nihil sequi commodi ipsa, voluptatem architecto labore deleniti nam ducimus veniam laborum beatae assumenda. Error labore ipsa molestias iusto aliquid! Excepturi, sequi, sapiente! Nesciunt, veritatis!
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita corrupti qui fugiat magnam, mollitia vel provident aliquam inventore eligendi dolor id harum ab, voluptatum explicabo asperiores quaerat cumque ducimus, perferendis ratione tempore quod. Deserunt velit aliquam doloribus ea ad numquam blanditiis nobis quaerat laudantium reprehenderit explicabo, aperiam expedita tempora saepe officiis? Corrupti deleniti aut ex voluptatibus mollitia culpa eaque, tempore, numquam odit maiores obcaecati. Mollitia accusantium odio, tempore ipsa, alias recusandae expedita cumque delectus, ut iste reiciendis molestias minima necessitatibus suscipit est in quo repellendus natus consequatur unde cupiditate et quibusdam quae, accusamus. Voluptas quo unde labore minima officia inventore?
					</p>
				</div>
				<div class="notice-btn">
					<a href="#none">
						<input type="button" value="목록">
					</a>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>