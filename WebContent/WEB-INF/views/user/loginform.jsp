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
				<a class="navbar-brand" href="/main">MySite</a>
			</div>
			<jsp:include page="/WEB-INF/views/include/header.jsp" />
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/views/include/navigation.jsp" />
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="container-fluid">
					<div class="wrapper">
						<div class="content">
							<div id="site-introduction">
								<form id="login-form" name="loginform" method="post"
									action="/mysite/user?a=login">
									<label class="block-label" for="email">이메일</label> <input
										id="email" name="email" type="text" value=""> <label
										class="block-label">패스워드</label> <input name="password"
										type="password" value="">
									<p>로그인이 실패 했습니다.</p>
									<input type="submit" value="로그인">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>
</html>