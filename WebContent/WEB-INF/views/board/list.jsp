<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/assets/css/board.css" rel="stylesheet" type="text/css">
<link href="/assets/css/bootstrap.css" rel="stylesheet">
<link href="/assets/css/dashboard.css" rel="stylesheet">
<link href="/assets/css/footer.css" rel="stylesheet">
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
			<c:import url="/WEB-INF/views/include/navigation.jsp" />
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="content">
					<div id="board">
						<form class="form-group" action="" method="post">
							<input type="text" class="form-control" value="">
							<button type="submit" class="btn btn-default">찾기</button>
						</form>
						<table class="table table-bordered">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>조회수</th>
								<th>작성일</th>
								<th>&nbsp;</th>
							</tr>
							<tr>
								<td>3</td>
								<td><a href="">세 번째 글입니다.</a></td>
								<td>안대혁</td>
								<td>3</td>
								<td>2015-10-11 12:04:20</td>
								<td><a href=""><button type="submit" class="btn btn-danger btn-sm">삭제</button></a></td>
							</tr>
							<tr>
								<td>2</td>
								<td><a href="">두 번째 글입니다.</a></td>
								<td>안대혁</td>
								<td>3</td>
								<td>2015-10-02 12:04:12</td>
								<td><a href=""><button type="submit" class="btn btn-danger btn-sm">삭제</button></a></td>
							</tr>
							<tr>
								<td>1</td>
								<td><a href="">첫 번째 글입니다.</a></td>
								<td>안대혁</td>
								<td>3</td>
								<td>2015-09-25 07:24:32</td>
								<td><a href=""><button type="submit" class="btn btn-danger btn-sm">삭제</button></a></td>
							</tr>
						</table>
						<button type="submit" class="btn btn-default">글쓰기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp"/>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>
</html>