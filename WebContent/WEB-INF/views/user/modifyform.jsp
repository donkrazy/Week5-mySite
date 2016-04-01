<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
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
			<c:import url="/WEB-INF/views/include/navigation.jsp" />
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="container-fluid">
					<div class="wrapper">
						<div class="content">
							<div id="user">
								<form method="post" action="/user" role="form">
									<input type="hidden" name="a" value="modify">
									<div class="form-group">
										<label class="block-label" for="name">이름<input
											class="form-control" id="name" name="name" type="text"
											value="${userVo.name }"></label>
									</div>
									<div class="form-group">
										<label class="block-label" for="email">이메일<input
											class="form-control" id="email" name="email" type="text"
											value="${userVo.email }"></label>
									</div>
									<div class="form-group">
										<label class="block-label">비밀번호 <input
											class="form-control" name="password" type="password" value=""></label>
									</div>
									<div>
										<label>성별</label>
									</div>
									<c:if test="${userVo.gender == 'F' }">
										<div class="radio-inline">
											<input type="radio" name="gender" value="F" checked="checked">여
										</div>
										<div class="radio-inline">
											<input type="radio" name="gender" value="M">남
										</div>
									</c:if>
									<c:if test="${userVo.gender == 'M' }">
										<div class="radio-inline">
											<input type="radio" name="gender" value="F">여
										</div>
										<div class="radio-inline">
											<input type="radio" name="gender" value="M" checked="checked">남
										</div>
									</c:if>
									<div>
										<button class="btn btn-primary" type="submit">수정하기</button>
									</div>
								</form>
							</div>
						</div>
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