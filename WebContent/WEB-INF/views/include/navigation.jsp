<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li 
			<c:if test="${param.nav=='main' }" >
			class="active"
			</c:if>
			>
			<a href="/main">이세돌</a></li>
		<li
		<c:if test="${param.nav=='guestbook' }" >
			class="active"
			</c:if>
			>	
		
		<a href="/guestbook">방명록</a
		></li>
		
		<li
		<c:if test="${param.nav=='board' }" >
			class="active"
			</c:if>
			>
		<a href="/board">게시판</a></li>
	</ul>
</div>