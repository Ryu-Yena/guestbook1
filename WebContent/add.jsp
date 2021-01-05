<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<% 

	/* http://localhost:8088/guestbook1/add.jsp?name=이정재&password=1234&content=첫번째 방명록내용<br>안녕하세요 */
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestVo gusetVo = new GuestVo(name, password, content);
	
	GuestDao guestDao = new guestDao();
	
	guestDao.addGuest(guestVo);
	
	

%>