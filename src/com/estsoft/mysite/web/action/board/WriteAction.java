package com.estsoft.mysite.web.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.BoardDao;
import com.estsoft.mysite.vo.BoardVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class WriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter( "title" );
		String content = request.getParameter( "content" );
		Long user_no = Long.valueOf(request.getParameter("user_no"));
		BoardVo vo = new BoardVo();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setUser_no(user_no);
		BoardDao dao = new BoardDao( new MySQLWebDBConnection() );
		dao.insert(vo);			
		response.sendRedirect( "/board" );
	}
}
