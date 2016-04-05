package com.estsoft.mysite.web.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.UserDao;
import com.estsoft.mysite.vo.UserVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter( "email" );
		String password = request.getParameter( "password" );
		UserVo authUser = new UserDao(new MySQLWebDBConnection()).get(email, password);
		
		if( authUser == null ) {
			WebUtil.forward(request, response, "/WEB-INF/views/user/loginform_fail.jsp");
			return;
		}
		
		//인증 성공 (로그인처리)
		HttpSession session = request.getSession( true );
		session.setAttribute( "authUser", authUser );
		response.sendRedirect("/main" );
	}
}