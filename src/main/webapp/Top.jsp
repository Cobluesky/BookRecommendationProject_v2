a<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mem_id = (String)session.getAttribute("idKey");
	String mem_role = (String)session.getAttribute("roleKey");
	String log="";
	if(mem_id == null) log ="<a href=login.jsp>로그인</a>";
	else log = "<a href=logout.do>로그아웃</a>";
	String mem="";
	if(mem_role == null || mem_role.equals("일반회원")) mem ="<a href=my_page.jsp> 마이페이지 </a>";
	else mem = "<a href=mem_info.jsp> 관리자페이지 </a>";
	String notice="";
	if(mem_role == null || mem_role.equals("일반회원")) notice ="<a href=client_notice.jsp>공지사항</a>";
	else notice = "<a href=admin_notice.jsp>공지사항 관리</a>";
%>
<div class="gnb">
	<div class="gnb-inner">
		<%=log%>
		<a href="join.jsp">회원가입</a>
		<%=mem%>
		<%=notice%>
	</div>
</div>