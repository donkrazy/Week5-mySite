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
		UserDao userDao =  new UserDao(new MySQLWebDBConnection());
		int page = 0;
		int head = 0;
		int UNITS_PER_PAGE = 3;
		if(request.getParameter("head") == null){
			response.sendRedirect("/board?head=0");
			return;
		}
		head = Integer.valueOf(request.getParameter("head"));
		if(request.getParameter("page") == null){
			response.sendRedirect("/board?head="+head+"&page="+(head*5+1));
			return;
		}
		page = Integer.valueOf(request.getParameter("page"));
		List<BoardVo> list =dao.getList(page);
		int pageNum = dao.getLength()/UNITS_PER_PAGE + 1;
		int starts = 5*head +1;
		int ends = (pageNum>5*(head+1))? 5*(head+1) : pageNum;
		request.setAttribute( "list", list );
		request.setAttribute( "userDao", userDao );
		request.setAttribute("starts", starts);
		request.setAttribute("ends", ends);
		WebUtil.forward( request, response, "/WEB-INF/views/board/list.jsp" );
	}
}
