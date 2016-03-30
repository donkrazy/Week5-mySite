package com.estsoft.mysite.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estsoft.mysite.web.action.guestbook.GuestbookActionFactory;
import com.estsoft.web.action.Action;
import com.estsoft.web.action.ActionFactory;

@WebServlet("/guestbook")
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding( "UTF-8" );
		String actionName = request.getParameter( "a" );
		ActionFactory actionFactory = new GuestbookActionFactory();
		Action action = actionFactory.getAction( actionName );
		action.execute(request, response);
		
//		if( "add".equals( actionName )  ) {
//			String name = request.getParameter( "name" );
//			String password = request.getParameter( "password" );
//			String message = request.getParameter( "content" );
//			
//			GuestbookVo vo = new GuestbookVo();
//			vo.setName(name);
//			vo.setPassword(password);
//			vo.setMessage(message);
//			
//			GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
//			dao.insert(vo);			
//			response.sendRedirect( "gb" );
//		} else if( "deleteform".equals( actionName ) ) {
//			RequestDispatcher rd = request.getRequestDispatcher(  "/WEB-INF/views/deleteform.jsp"  );
//			rd.forward( request, response );			
//		} else if( "delete".equals( actionName ) ) {
//			Long no = Long.parseLong( request.getParameter( "no" ) );
//			String password = request.getParameter( "password" );
//
//			GuestbookVo vo = new GuestbookVo();
//			vo.setNo( no );
//			vo.setPassword(password);
//			
//			GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
//			dao.delete( vo );
//			
//			response.sendRedirect( "gb" );
//		} else {
//			// default action ( list, index )
//			GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
//			List<GuestbookVo> list = dao.getList();
//			
//			// 포워딩전에 JSP로 보낼 데이터를 request범위(scope)에 저장한다.
//			request.setAttribute( "list", list );
//			
//			// forwarding (request 확장, request dispatcher )
//			RequestDispatcher rd = request.getRequestDispatcher(  "/WEB-INF/views/index.jsp"  );
//			rd.forward( request, response );
//		}		
	}
}