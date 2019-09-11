<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%
		request.setCharacterEncoding("UTF-8");
		Long no = Long.parseLong(request.getParameter("id"));
		String password = request.getParameter("password");
		
	    GuestbookVo vo = new GuestbookVo();
		vo.setNo(no);
		vo.setPassword(password);
	
		new GuestbookDao().delete(vo);
		
		response.sendRedirect(request.getContextPath());
%>