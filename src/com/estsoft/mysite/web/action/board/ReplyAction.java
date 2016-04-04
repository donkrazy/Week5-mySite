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
import com.estsoft.web.action.Action;

public class ReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter( "title" );
		String content = request.getParameter( "content" );
		BoardDao dao = new BoardDao( new MySQLWebDBConnection() );
		Long user_no = Long.valueOf(request.getParameter("user_no")); //원글 글쓴이 번호
		Long no = Long.parseLong(request.getParameter("no"));	//원글 번호
		BoardVo vo_target = dao.get(no);	//원글 VO
		UserVo userVo = (UserVo) request.getSession().getAttribute("authUser");	//세션 글쓴이
		
		if( userVo == null ) {
			String message = "로그인하고와라";
			response.setContentType( "text/html; charset=utf-8" );
			PrintWriter out = response.getWriter();
			out.println(message);
			return;
		}
		
		Long session_user_no = userVo.getNo();	//새로운 글쓴이 번호
		BoardVo vo = new BoardVo();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setUser_no(session_user_no);
		vo.setGroup_no(vo_target.getGroup_no());
		vo.setOrder_no(vo_target.getOrder_no()+1);
		vo.setDepth(vo_target.getDepth()+1);
		dao.reply(vo);			
		response.sendRedirect( "/board" );
	}
}
