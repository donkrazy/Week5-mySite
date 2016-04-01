<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav navbar-nav navbar-right">
		<c:if test="${authUser == null }">
			<li><a href="/user?a=loginform">로그인</a></li>
			<li><a href="/user?a=joinf	orm">회원가입</a></li>
		</c:if>
		<c:if test="${authUser != null }">
			<li><a href="/user?a=modifyform">회원정보수정</a></li>
			<li><a href="/user?a=logout">로그아웃</a></li>
			<li><a href="#">${authUser.name }님 안녕하세요 ^^;</a></li>
		</c:if>
	</ul>
</div>
