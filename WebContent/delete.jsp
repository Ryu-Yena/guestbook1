<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page  import="com.javaex.dao.GuestDao"%>

<%

	int no = Integer.parseInt(request.getParameter("id"));

	GuestDao guestDao = new GuestDao();
	GuestDao.guestDelete(no);
	
	response.sendRedirect("./addList.jsp");


%>
