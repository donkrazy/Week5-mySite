<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
				<a class="navbar-brand" href="/main">이세돌이세돌잔치</a>
			</div>
			<c:import url="/WEB-INF/views/include/header.jsp" />
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<c:import url="/WEB-INF/views/include/navigation.jsp">
				<c:param name="nav" value="main"></c:param>
			</c:import>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="content">
					<img id="profile" width="500"
						src="/assets/images/kickscar_profile.jpg"> <img width="400"
						src="/assets/images/sedol.jpg"> <img width="400"
						src="/assets/images/deepmind.png">
					<h2>AlphaGo 명예 九단</h2>
					<div>
						<p>단 1년 만에 유럽 바둑 챔피언과 세계 최고 수준의 바둑 기사를 꺾은 인공지능 알파벳의 구글 딥마인드에서
							개발한 컴퓨터 바둑 인공지능 프로그램. 프로기사를 맞바둑으로 최초로 이긴 바둑 프로그램이기도 하다. 이름에서
							"Go"란 일본어로 바둑을 뜻하는 碁(바둑 기. 일본어 음독은 "고")를 의미한다. 이는 일반적으로 서구 언론에서
							바둑을 의미할 때 "고"란 말을 쓰기 때문이다. 2016년 3월 15일 한국기원에서 (일단 명예단증이긴 하지만) 프로
							九단 단증을 수여하게 되어 정식으로 알파고 九(9)단이 되었다. 게다가 객원기사로써 등록되긴 했어도 일단 한국기원의
							소속으로 등록되었기 때문에 언제든지 한국기원에서 개최하는 대회에 참가할 수 있게 되었다. 심지어 세계 바둑 ELO
							레이팅 점수 랭킹에도 등재되었다. 3586점으로 현재 2위</p>
						<p>AI community AlphaGo's March 2016 victory was a major
							milestone in artificial intelligence research.[32] Go had
							previously been regarded as a hard problem in machine learning
							that was expected to be out of reach for the technology of the
							time.[32][33][34] Most experts thought a Go program as powerful
							as AlphaGo was at least five years away;[35] some experts thought
							that it would take at least another decade before computers would
							beat Go champions.[6][36][37] Most observers at the beginning of
							the 2016 matches expected Lee to beat AlphaGo.[32] With games
							such as checkers</p>
						<p>(that has been "solved" by Chinook team), chess, and now Go
							won by computers, victories at popular board games can no longer
							serve as major milestones for artificial intelligence in the way
							that they used to. Deep Blue's Murray Campbell called AlphaGo's
							victory "the end of an era... board games are more or less done
							and it's time to move on."[32] When compared with Deep Blue or
							with Watson, AlphaGo's underlying algorithms are potentially more
							general-purpose, and may be evidence that the scientific
							community is making progress toward artificial general
							intelligence.[10][38] Some commentators believe AlphaGo's victory
							makes for a good opportunity for society to start discussing
							preparations for the possible future impact of machines with
							general purpose intelligence. (As noted by entrepreneur Guy
							Suter, AlphaGo itself only knows how to play Go, and doesn't
							possess general purpose intelligence: "[It] couldn't just wake up
							one morning and decide it wants to learn how to use
							firearms"[32]) In March 2016, AI researcher Stuart Russell stated
							that "AI methods are progressing much faster than expected,
							(which) makes the question</p>
						<p>of the long-term outcome more urgent," adding that "in
							order to ensure that increasingly powerful AI systems remain
							completely under human control... there is a lot of work to
							do."[39] Some scholars, such as Stephen Hawking, warned (in May
							2015 before matches) that some future self-improving AI could
							gain actual general intelligence, leading to an unexpected AI
							takeover; other scholars disagree: AI expert Jean-Gabriel
							Ganascia believes that "Things like 'common sense'... may never
							be reproducible",[40] and says "I don't see why we would speak
							about fears. On the contrary, this raises hopes in many domains
							such as health and space exploration."[39] Computer scientist
							Richard Sutton "I don't think people should be scared... but I do
							think people should be paying attention."[41] Go community Go is
							a popular game in China, Japan and Korea, and the 2016 matches
							were watched by perhaps a hundred million people
							worldwide.[32][42]</p>
						<p>
					</div>
					<p>
						<a href="/guestbook">방명록</a>에 글 남기기
					</p>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>

</body>