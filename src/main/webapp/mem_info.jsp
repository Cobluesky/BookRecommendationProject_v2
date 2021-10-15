<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="com.shop.user.*"
	import="com.shop.user.Impl.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
h1{
	text-alight: center
	}
</style>
<meta charset="UTF-8">
<title>회원 정보 페이지</title>
</head>
<body>
	<h1>회원정보 페이지 출력</h1>
<%
	//불러오기
	request.setCharacterEncoding("UTF-8");
	String mName = request.getParameter("name");
	MemberDto mDto = new MemberDto();
	mDto.setName(mName);
	MemberDao dao = new MemberDao();
	List memList = dao.listmembers(mDto);
%>

<table border=1 style="width:800px;align:center">
	<tr align="center" bgcolor="yellow">
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>성별</th>
		<th>역할</th>
	</tr>

<%
	//조회하기
	for(int i = 0; i < memList.size(); i++){
		MemberDto dto = (MemberDto) memList.get(i);
		String id = dto.getId();
        String pwd = dto.getPassword();
        String name = dto.getName();
        String p_num = dto.getPhonenumber();
        String email = dto.getMail();
        String gender = dto.getGender();
        String role = dto.getRole();
%>
	
	<tr align="center">
		<td><%=id%></td>
		<td><%=pwd%></td>
		<td><%=name%></td>
		<td><%=p_num%></td>
		<td><%=email%></td>
		<td><%=gender%></td>
		<td><%=role%></td>
<%
	}
%>
</table>
</body>
</html>