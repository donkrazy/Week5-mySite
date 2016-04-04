package com.estsoft.mysite.web.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.BoardDao;
import com.estsoft.mysite.dao.UserDao;
import com.estsoft.mysite.vo.BoardVo;
import com.estsoft.mysite.vo.UserVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class ViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long boardNo = Long.valueOf(request.getParameter("no"));
		BoardDao boardDao = new BoardDao(new MySQLWebDBConnection());
		BoardVo boardVo = boardDao.get(boardNo);
		boardDao.incrementHits(boardVo);
		request.setAttribute("boardVo", boardVo);
		WebUtil.forward( request, response, "/WEB-INF/views/board/view.jsp" );
	}
}
