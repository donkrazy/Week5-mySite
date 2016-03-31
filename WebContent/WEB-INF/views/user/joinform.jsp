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
							<form action="/user">
								<div class="form-group">
									<label for="dd">이름</label> <input type="text"
										class="form-control" name="name">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">비밀번호</label> <input
										type="password" class="form-control" name="password"
										placeholder="Password">
								</div>
								<div class="form-group">
									<label for="ttextfield">하고싶은말</label>
									<textarea class="form-control" name="message" cols=60 rows=5></textarea>
								</div>
								<div class="form-group">
									<input type="hidden" name="a" value="insert">
								</div>
								<button type="submit" class="btn btn-default">제출</button>
							</form>

							<form name="joinForm" method="post" class="form" action="/user">
								<input type="hidden" name="a" value="join"> <label
									class="block-label" for="name">이름</label> <input id="name"
									name="name" type="text" value=""> <label
									class="block-label" for="email">이메일</label> <input id="email"
									name="email" type="text" value=""> <input type="button"
									value="id 중복체크"> <label class="block-label">패스워드</label>
								<input name="password" type="password" value="">

								<fieldset>
									<legend>성별</legend>
									<label>여</label> <input type="radio" name="gender" value="F"
										checked="checked"> <label>남</label> <input
										type="radio" name="gender" value="M">
								</fieldset>

								<fieldset>
									<legend>약관동의</legend>
									<input id="agree-prov" type="checkbox" name="agreeProv"
										value="y"> <label>서비스 약관에 동의합니다.</label>
								</fieldset>

								<input type="submit" value="가입하기">

							</form>
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