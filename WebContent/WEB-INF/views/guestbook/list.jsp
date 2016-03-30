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
						<form action="/" method="post">
							<input type="hidden" name="a" value="insert">
							<table border=1>
								<tr>
									<td>이름</td>
									<td><input type="text" name="name"></td>
									<td>비밀번호</td>
									<td><input type="password" name="password"></td>
								</tr>
								<tr>
									<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
								</tr>
								<tr>
									<td colspan=4 align=right><input type="submit"
										VALUE=" 확인 "></td>
								</tr>
							</table>
						</form>
						<ul>
							<li>
								<%
									for (GuestbookVo vo : dao.getList()) {
								%>
								<table border=1>
									<tr>
										<td><%=vo.getNo()%></td>
										<td><%=vo.getName()%></td>
										<td><%=vo.getRegDate()%></td>
										<td><a href="/guestbook?a=deleteform&id=<%=vo.getNo()%>">삭제</a></td>
									</tr>
									<tr>
										<td colspan=4><%=vo.getMessage()%></td>
									</tr>
								</table> <%
 	}
 %>
							</li>
						</ul>
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