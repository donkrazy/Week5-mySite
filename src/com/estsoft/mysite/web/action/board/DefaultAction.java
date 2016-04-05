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
//		System.out.print(request.getParameter("kwd"));
//		System.out.print(request.getParameter("page"));
//		System.out.println(request.getParameter("head"));
		//초기화
		int page = 0;
		int head = 0;
		int UNITS_PER_PAGE = 3;
		String kwd = null;
		List<BoardVo> list = null;
		int pageNum;
		int starts;
		int ends;
		BoardDao dao = new BoardDao( new MySQLWebDBConnection() );
		UserDao userDao =  new UserDao(new MySQLWebDBConnection());
		
		//kwd 먼저 받기
		if(request.getParameter("kwd")==null){
			kwd = "";
		}else{
			kwd = request.getParameter("kwd");
		}
		
		
		//redirect 조건으로 거르고 parameter로 head, page 받기
		if(request.getParameter("head") == null || request.getParameter("head").trim().equals("")){
			response.sendRedirect("/board?head=0");
			return;
		}
		head = Integer.valueOf(request.getParameter("head"));
		if(request.getParameter("page") == null){
			response.sendRedirect("/board?head="+head+"&page="+(head*5+1)+"&kwd="+kwd);
			return;
		}
		page = Integer.valueOf(request.getParameter("page"));
		//이제 page와 head값이 있음
		
		
		
		//kwd 없는 검색과 있는 검색
		if(kwd.equals("")){
			list =dao.getList(page);
			pageNum = dao.getLength()/UNITS_PER_PAGE + 1;
		}
		else{
			kwd = request.getParameter("kwd");
			list = dao.getList(page, kwd);
			pageNum = dao.getLength(kwd)/UNITS_PER_PAGE + 1;
		}
		
		//request forward
		starts = 5*head +1;
		ends = (pageNum>5*(head+1))? 5*(head+1) : pageNum;
		request.setAttribute( "list", list );
		request.setAttribute( "userDao", userDao );
		request.setAttribute( "starts", starts);
		request.setAttribute( "ends", ends);
		WebUtil.forward( request, response, "/WEB-INF/views/board/list.jsp" );
	}
}
