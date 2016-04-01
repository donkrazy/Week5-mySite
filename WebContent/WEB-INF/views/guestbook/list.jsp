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
				<c:param name="nav" value="guestbook"></c:param>
			</c:import>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="content">
					<div id="">
						<form>
							<div class="form-group">
								<label for="dd">이름</label> <input type="text"
									class="form-control" name="name">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">비밀번호</label> <input
									type="password" class="form-control" name="password">
							</div>
							<div class="form-group">
								<label for="ttextfield">하고싶은말</label>
								<textarea class="form-control" name="message" cols=60 rows=5></textarea>
							</div>
							<div class="form-group">
								<input type="hidden" name="a" value="add">
							</div>
							<button type="submit" class="btn btn-default">제출</button>
						</form>

						<table class="table table-bordered">
							<caption>
								<h1>방명록</h1>
							</caption>
							<thead>
								<tr>
									<th>#</th>
									<th>Name</th>
									<th>message</th>
									<th>reg_date</th>
									<th>delete</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="count" value="${fn:length(list) }" />
								<c:forEach items="${list }" var="vo" varStatus="status">
									<tr>
										<th>${count-status.index }</th>
										<td>${vo.name }</td>
										<td>${fn:replace(vo.message, newLine, "<br>") }</td>
										<td>${vo.regDate }</td>
										<td><a href="/guestbook?a=deleteform&no=${vo.no }"><button
													type="submit" class="btn btn-danger btn-sm">삭제</button></a></td>
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