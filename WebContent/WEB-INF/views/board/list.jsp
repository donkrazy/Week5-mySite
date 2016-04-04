<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
					<div id="">
						<h1>게시판</h1>

						<c:if test="${authUser == null }">
							글을 쓰고싶거든 로그인을 해라
						</c:if>
						<c:if test="${authUser != null }">
							<a href="?a=writeform"><button class="btn btn-primary">추가</button></a>
						</c:if>

						<table class="table">
							<thead>
								<tr>
									<th>제목</th>
									<th>글쓴이</th>
									<th>reg_date</th>
									<th>조회수</th>
									<th>group_no</th>
									<th>order_no</th>
									<th>depth</th>

								</tr>
							</thead>
							<tbody>
								<c:set var="count" value="${fn:length(list) }" />
								<c:forEach items="${list }" var="vo" varStatus="status">
									<tr>
										<td>
											<c:forEach begin="1" end="${vo.depth }" varStatus="loop">
												<img src="/assets/images/reply.png"></img>
											</c:forEach> 
											<a href="?a=view&no=${vo.no }">${vo.title}</a>
										</td>
										<td>${vo.user_no }</td>
										<td>${vo.regDate }</td>
										<td>${vo.hits }</td>
										<td>${vo.group_no }</td>
										<td>${vo.order_no }</td>
										<td>${vo.depth }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>
</html>