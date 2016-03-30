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
	<div id="user">
		<p class="jr-success">
			회원가입을 축하합니다. <br>
			<br> <a href="/user?a=loginform">로그인하기</a>
		</p>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>
</html>