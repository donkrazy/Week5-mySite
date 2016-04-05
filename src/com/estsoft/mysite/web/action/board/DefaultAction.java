package com.estsoft.mysite.web.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.BoardDao;
import com.estsoft.mysite.dao.UserDao;
import com.estsoft.mysite.vo.BoardVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class DefaultAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDao dao = new BoardDao( new MySQLWebDBConnection() );
		List<BoardVo> list = dao.getList();
		UserDao userDao =  new UserDao(new MySQLWebDBConnection());
		request.setAttribute( "list", list );
		request.setAttribute( "userDao", userDao );
		WebUtil.forward( request, response, "/WEB-INF/views/board/list.jsp" );
	}

}
