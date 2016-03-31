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
									<label class="block-label" for="name">이름</label> <input
										type="text" class="form-control" name="name">
								</div>
								<div class="form-group">
									<label class="block-label" for="email">이메일</label> <input
										type="text" class="form-control" name="email">
								</div>
								<div class="form-group">
									<label class="block-label">비밀번호</label> <input type="password"
										class="form-control" name="password" placeholder="Password">
								</div>
								<input type="hidden" name="a" value="join">

								<fieldset>
									<legend>성별</legend>
									<label>여</label> <input type="radio" name="gender" value="F"
										checked="checked"> <label>남</label> <input
										type="radio" name="gender" value="M">
								</fieldset>

								<fieldset>
									<legend>약관동의</legend>
									<div>구글에 인수된 딥마인드에서 개발한 머신러닝 기반 바둑 프로그램으로, 자기 자신과의 자가대국을
										통한 학습이 가능하다고 한다. 사내 테스트 결과 다른 바둑 인공지능 프로그램들을 상대로 495전 494승 1패
										기록했다. (참고로 이 승률은 1개의 컴퓨터를 사용하는 싱글 알파고가 따낸 승률이다) 이 중 한판은 알파고의
										'실수'로 졌다고 하며 그 약점은 이미 보완이 끝났기 때문에 명실공히 현 최강의 인공지능 프로그램으로 군림하고
										있다. 현재까지 나온 모든 바둑 인공지능을 성능으로 압도하는 모습에 일부 개발자들 사이에선 젠(Zen)이나
										크레이지스톤(Crazystone) 등의 프로그램들이 더이상 존재 의미가 있는가, 바둑 인공지능 대회인 UEC를
										계속 지속해야 하는가 등을 투표하는 등 굉장한 충격을 받고 있다. # 본래 체스라면 과거 IBM의 딥 블루가
										가리 카스파로프를 상대로 대결해 이긴 바가 있지만, 바둑은 체스에 비해 경우의 수가 너무 많아서[6] 지금까지는
										인공지능이 프로 바둑 기사를 이기지 못하였는데, 알파고가 프로바둑기사를 이긴 최초의 바둑 인공지능인 것 이다.

										덤으로 서로 바둑 최강국임을 자부하며 10년 넘게 바둑 인공지능을 개발해오던 한국, 중국, 일본의 개발자들은 그
										모든 기술과 노하우들이 고작 개발이 1년 좀 넘은 정도인 알파고가 발표됨과 동시에 전부 따라잡히며 성능으로도
										처참하게 발려버리는 엄청난 격차가 생겨 순식간에 모든 프로그램을 한물 간 프로그램으로 만들어버리는 데꿀멍,
										안습한 상황이 벌어졌다... 세계자본이 바둑에 관심을 보이면 어떤 일이 일어나는지 잘 보여주는 장면. 바둑
										뿐만이 아니다 흔히 알파고의 강점이 엄청난 하드웨어를 바탕으로 한 계산량이라고 생각하는 경우가 많다. 그러나
										알파고가 기존 바둑 프로그램과의 가장 큰 차이를 보이는 부분은 하드웨어가 아니라 소프트웨어의 알고리즘이다.
										알파고는 일반 컴퓨터에서도 돌릴 수 있다. 다만 지금보다 기력이 떨어질 뿐(...) 컴퓨터 1대[7]에서
										돌아가는 알파고를 CPU 1000개가 넘어가는 알파고가 이길 확률이 고작 77%였다. # 알파고가 기반하고 있는
										딥러닝은 학습 과정이 학습한 걸 써먹는 과정보다 훨씬 길기 때문에, 일단 학습이 된 이후로는 그걸 써 먹는
										과정은 정말 별 것 아닌 것이다. 알파고가 대국 중에 하드웨어를 많이 쓰는 이유는 추가 탐색으로 얻는 저
										23%의 차이도 실제 대국에서는 중요하기 때문이다. 컴퓨터 비전이나 음성 인식 등 패턴 인식류 AI 쪽에서
										딥러닝이 나오면서 최근 2년 동안의 결과가 지난 30~40년간의 결과를 다 발라버리는 사례는 비단 바둑 뿐만은
										아니다. 그러나 딥러닝은 나름대로의 최신 트렌드인데다 이미지, 음성, 자연어 처리 같이 해야 할 일이 산더미
										같은 상황에 바둑에 연구진을 투입할 수 있는 여유를 가진 곳은 드물다. AI와 하드웨어, 분산 처리 모두에
										풍부한 박사급 인력을 가진 미국, 거기에서도 구글에서나 해볼만한 일이며, 현 시점 한중일에서는 비슷한 것을
										시도해 볼 수 있는 회사는 없다고 보면 된다. 쉽게 말해 돈 안되는 사업에 최고급 인력과 자본, 시간을
										양동이채로 퍼붓는 돈X랄[8]이 가능한 회사만이 할 수 있는 일이다. 다만 앤드루 응 교수를 데려간 바이두에서
										몇 년 뒤 비슷한 것을 시도해 볼 수 있을 것이다. github에 알파고의 논문을 토대로 알파고를 구현하는
										프로젝트가 공개되어 있다. 완전한 구현은 아니며, 아직 초기 단계라고 한다.</div>
									<input id="agree-prov" type="checkbox" name="agreeProv"
										value="y"> <label>서비스 약관에 동의합니다.</label>
								</fieldset>
								<button type="submit" class="btn btn-default">가입하기</button>
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