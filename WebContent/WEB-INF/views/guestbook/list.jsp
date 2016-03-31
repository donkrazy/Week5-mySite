<%@ page import="com.estsoft.db.MySQLWebDBConnection"%>
<%@ page import="com.estsoft.mysite.dao.GuestbookDao"%>
<%@ page import="com.estsoft.mysite.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	GuestbookDao dao = new GuestbookDao(new MySQLWebDBConnection());
%>
<!doctype html>
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
					<div id="guestbook">
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
							<caption><h1>방명록</h1></caption>
							<thead>
								<tr>
									<th>#</th>
									<th>Name</th>
									<th>reg_date</th>
									<th>message</th>
									<th>delete</th>
								</tr>
							</thead>
							<tbody>
								<%
							for (GuestbookVo vo : dao.getList()) {
						%>
								<tr>
									<th><%=vo.getNo()%></th>
									<td><%=vo.getName()%></td>
									<td><%=vo.getRegDate()%></td>
									<td><%=vo.getMessage()%></td>
									<td><a href="/guestbook?a=deleteform&no=<%=vo.getNo()%>"><button>삭제</button></a></td>
								</tr>
								<%
							}
						%>
							</tbody>
						</table>
				




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