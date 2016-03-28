<%@page import="com.estsoft.db.MySQLWebDBConnection" %>
<%@page import="com.estsoft.guestbook.dao.GuestBookDAO"%>
<%@page import="com.estsoft.guestbook.vo.GuestBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	GuestBookVO vo = new GuestBookVO();
	vo.setName(name);
	vo.setPasswd(password);
	vo.setMessage(content);
	
	GuestBookDAO dao = new GuestBookDAO(new MySQLWebDBConnection());
	dao.insert(vo);	
	
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