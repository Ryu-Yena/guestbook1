<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	GuestDao guestDao = new GuestDao();
	List<GuestVo> guestList = guestDao.getGuestList();

	System.out.println(guestList.toString());
	
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="" method="post">
		<table border="1">
			<tr>
				<td>이름</td>
				<td colspan="4"><input type="text" name="name"></td>
				<td colspan="2">비밀번호</td>
				<td colspan="4"><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td colspan="11"><textarea rows="4" cols="65"></textarea></td>
			</tr>
			
			<tr>
				<td colspan="11"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>

	<%for(int i=0;i<guestList.size(); i++){ %>
		<table border="1">
			<tr>
				<td><%=guestList.get(i).getNo() %></td>
				<td colspan="2"><%=guestList.get(i).getName()%></td>
				<td colspan="6"><%=guestList.get(i).getReg_date() %></td>
				<td colspan="2"><a href="./deleteForm.jsp">삭제</a>
			</tr>
			
			<tr>
				<td colspan="11"><%=guestList.get(i).getContent()%></td>
			</tr>
		</table>
		<br>
	<%}%>

</body>
</html>