<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/dashboard.css" rel="stylesheet">
<link href="assets/css/footer.css" rel="stylesheet">
<style type="text/css"></style>
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
							<form role="form" id="login-form" name="loginform" method="post"
								action="/user?a=login">
								<div class="form-group">
									<label class="block-label" for="email">이메일 <input
										id="email" name="email" type="text" value=""></label>
								</div>
								<div class="form-group">
									<label class="block-label">패스워드 <input name="password"
										type="password" value=""></label>
								</div>
								<div>
									<button class="btn btn-primary" type="submit">로그인</button>
								</div>
								<p>로그인이 실패했습니다</p>
							</form>
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