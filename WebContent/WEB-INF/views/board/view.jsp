<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	pageContext.setAttribute("newLine", "\r\n");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mySite</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/dashboard.css" rel="stylesheet">
<link href="assets/css/footer.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/main">이세돌이세돌잔치</a>
			</div>
			<c:import url="/WEB-INF/views/include/header.jsp" />
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<c:import url="/WEB-INF/views/include/navigation.jsp">
				<c:param name="nav" value="board"></c:param>
			</c:import>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="content">

					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="panel-title">${boardVo.title }
								<span style="float: right"><h5>유저이름:
										${name } 작성일: ${boardVo.regDate } 조회수:
										${boardVo.hits }</h5></span>

							</div>

						</div>
						<div class="panel-body">${fn:replace(boardVo.content, newLine, "<br>") }</div>
					</div>
				</div>

				<c:choose>
					<c:when test="${authUser == null }">
						로그인을 해라
					</c:when>
					<c:when test="${authUser.no != boardVo.user_no }">
						<a href="/board?a=replyform&no=${boardVo.no }&user_no=${boardVo.user_no }"><button
								type="submit" class="btn btn-primary">답글 달기</button></a>
					</c:when>
					<c:when test="${authUser.no == boardVo.user_no }">
						<a href="/board?a=replyform&no=${boardVo.no }&user_no=${boardVo.user_no }"><button
								type="submit" class="btn btn-primary">답글 달기</button></a>
						<a href="/board?a=modifyform&no=${boardVo.no }&user_no=${boardVo.user_no }"><button
								type="submit" class="btn btn-primary">수정</button></a>
						<a href="/board?a=deleteform&no=${boardVo.no }&user_no=${boardVo.user_no }"><button
								type="submit" class="btn btn-danger">삭제</button></a>
					</c:when>
					<c:otherwise>
						너의 정체는 뭐냐
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>
</html>