package com.estsoft.mysite.web.action.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.BoardDao;
import com.estsoft.mysite.vo.BoardVo;
import com.estsoft.mysite.vo.UserVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class ModifyFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			String message = "로그인하고와라";
			response.setContentType( "text/html; charset=utf-8" );
			PrintWriter out = response.getWriter();
			out.println(message);
			//WebUtil.redirect(request, response, "/board");
			return;
		}
		
		//로그인으 했으나 글 주인이 다른 경우 
		Long user_no = Long.valueOf(request.getParameter("user_no"));
		if(authUser.getNo() != user_no){
			String message = "자기 글만 손댈수 있다";
			response.setContentType( "text/html; charset=utf-8" );
			PrintWriter out = response.getWriter();
			out.println(message);
			//WebUtil.redirect(request, response, "/board");
			return;
		}
		
		long boardNo = Long.valueOf(request.getParameter("no"));
		BoardVo boardVo = new BoardDao(new MySQLWebDBConnection()).get(boardNo);
		request.setAttribute("boardVo", boardVo);
		WebUtil.forward( request, response, "/WEB-INF/views/board/modifyform.jsp" );
	}

}
