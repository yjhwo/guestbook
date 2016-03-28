<%@page import="com.estsoft.db.MySQLWebDBConnection" %>
<%@page import="com.estsoft.guestbook.dao.GuestBookDAO"%>
<%@page import="com.estsoft.guestbook.vo.GuestBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestBookDAO dao = new GuestBookDAO(new MySQLWebDBConnection());
	dao.delete(Integer.parseInt(no), password);	
	
	response.sendRedirect("/guestbook");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공했습니다.</h1>
</body>
</html>