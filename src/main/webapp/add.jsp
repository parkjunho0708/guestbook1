<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String contents = request.getParameter("message");
		
	    GuestbookVo vo = new GuestbookVo();
		vo.setName(name);
		vo.setPassword(password);
		vo.setContents(contents);
	
		new GuestbookDao().insert(vo);
		
		response.sendRedirect(request.getContextPath());
%>