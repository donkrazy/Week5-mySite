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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="assets/js/bootstrap.js"></script>
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
				<h1 class="page-header">게시판</h1>
				<div>
					<form class="navbar-form" method="POST" action="/board?head=${param.head }&page=${param.page }">
						<div class="form-group">
							<input placeholder="게시물 검색" class="form-control" type="text" name="kwd" value="${param.kwd }">
						</div>
						<button type="submit" class="btn btn-success">Search</button>
					</form>
				</div>
				
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>제목</th>
								<th>글쓴이</th>
								<th>reg_date</th>
								<th>조회수</th>
	
							</tr>
						</thead>
						<tbody>
							<c:set var="count" value="${fn:length(list) }" />
							<c:forEach items="${list }" var="vo" varStatus="status">
								<tr>
									<td><c:forEach begin="1" end="${vo.depth }"
											varStatus="loop">
											<img src="/assets/images/reply.png"></img>
										</c:forEach> <a href="?a=view&no=${vo.no }">${vo.title}</a></td>
									<td>${userDao.getUserName(vo.user_no) }</td>
									<td>${vo.regDate }</td>
									<td>${vo.hits }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div> 
					<c:if test="${authUser == null }">
						<a href="/user?a=loginform"><button class="btn btn-primary">글쓰기</button></a>
					</c:if>
					 <c:if test="${authUser != null }">
						<a href="?a=writeform"><button class="btn btn-primary">글쓰기</button></a>
					</c:if>
				</div>
				
				<div class="pager">
					<div style="text-align: center;">
						<nav>
							<ul class="pagination">
								<c:if test="${param.head>=1 }">
									<li class="page-item"><a class="page-link"
										href="/board?head=${param.head-1 }" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
									</a></li>
								</c:if>
								<c:forEach begin="${starts }" end="${ends }" varStatus="loop">
									<li
										class="page-item <c:if test="${loop.index == param.page }"> active</c:if>">
										<a class="page-link"
										href="/board?page=${loop.index }&head=${param.head }&kwd=${param.kwd }">${loop.index }</a>
									</li>
								</c:forEach>
								<c:if test="${pageNum > 5 && ends%5 == 0}">
									<li class="page-item">
										<a class="page-link" href="/board?head=${param.head+1 }&kwd=${param.kwd }" aria-label="Next">
											<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
										</a>
									</li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>