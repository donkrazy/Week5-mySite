<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>mySite</title>
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
				<div class="content">
					<img id="profile" width="500"
						src="/assets/images/kickscar_profile.jpg">
					<h2>AlphaGo 명예 九단</h2>
					<p>단 1년 만에 유럽 바둑 챔피언과 세계 최고 수준의 바둑 기사를 꺾은 인공지능 알파벳의 구글 딥마인드에서
						개발한 컴퓨터 바둑 인공지능 프로그램. 프로기사를 맞바둑으로 최초로 이긴 바둑 프로그램이기도 하다. 이름에서 "Go"란
						일본어로 바둑을 뜻하는 碁(바둑 기. 일본어 음독은 "고")를 의미한다. 이는 일반적으로 서구 언론에서 바둑을 의미할
						때 "고"란 말을 쓰기 때문이다. 2016년 3월 15일 한국기원에서 (일단 명예단증이긴 하지만) 프로 九단 단증을
						수여하게 되어 정식으로 알파고 九(9)단이 되었다. 게다가 객원기사로써 등록되긴 했어도 일단 한국기원의 소속으로
						등록되었기 때문에 언제든지 한국기원에서 개최하는 대회에 참가할 수 있게 되었다. 심지어 세계 바둑 ELO 레이팅 점수
						랭킹에도 등재되었다. 3586점으로 현재 2위</p>
					<p>
						<a href="#">방명록</a>에 글 남기기
					</p>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>

</body>