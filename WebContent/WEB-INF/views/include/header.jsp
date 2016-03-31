<%@page import="com.estsoft.mysite.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
%>
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav navbar-nav navbar-right">
		<%
			if (authUser == null) {
		%>
		<li><a href="/user?a=loginform">로그인</a>
		<li>
		<li><a href="/user?a=joinform">회원가입</a>
		<li>
			<%
				} else {
			%>
		<li><a href="/user?a=modifyform">회원정보수정</a>
		<li>
		<li><a href="/user?a=logout">로그아웃</a>
		<li>
		<li><a href="#"><%=authUser.getName()%>님 안녕하세요 ^^;</a></li>
		<%
			}
		%>
	</ul>
</div>
