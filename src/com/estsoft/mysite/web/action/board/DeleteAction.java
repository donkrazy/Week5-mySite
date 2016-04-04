package com.estsoft.mysite.web.action.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.BoardDao;
import com.estsoft.mysite.vo.BoardVo;
import com.estsoft.mysite.vo.UserVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class DeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserVo userVo = (UserVo) request.getSession().getAttribute("authUser");
		Long no = Long.parseLong( request.getParameter( "no" ) );
		Long user_no = Long.parseLong( request.getParameter( "user_no" ) );
		if( userVo == null ) {
			String message = "로그인하고와라";
			response.setContentType( "text/html; charset=utf-8" );
			PrintWriter out = response.getWriter();
			out.println(message);
			return;
		}
		Long session_user_no = userVo.getNo();
		if( user_no != session_user_no ) {
			String message = "니 글만 지울 수 있단다";
			response.setContentType( "text/html; charset=utf-8" );
			PrintWriter out = response.getWriter();
			out.println(message);
			return;
		}
		BoardVo vo = new BoardVo();
		vo.setNo( no );
		BoardDao dao = new BoardDao( new MySQLWebDBConnection() );
		dao.delete( vo );
		response.sendRedirect( "board" );
	}
}
