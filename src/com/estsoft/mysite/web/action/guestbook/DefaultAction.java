package com.estsoft.mysite.web.action.guestbook;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.mysite.dao.GuestbookDao;
import com.estsoft.mysite.vo.GuestbookVo;
import com.estsoft.web.WebUtil;
import com.estsoft.web.action.Action;

public class DefaultAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
		List<GuestbookVo> list = dao.getList();
		
		// 포워딩전에 JSP로 보낼 데이터를 request범위(scope)에 저장한다.
		request.setAttribute( "list", list );
		WebUtil.forward( request, response, "/WEB-INF/views/guestbook/list.jsp" );
	}

}
