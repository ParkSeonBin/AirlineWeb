<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 항공사 로그인 </title>
</head>
<body>
	항공사 > 로그인
	<hr>
	
     <%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		
		if(u_id.equals("space") && u_pw.equals("123456"))
		{
			session.setAttribute("memberId", u_id);
			session.setAttribute("memberPw", u_pw);
			
			out.println("새로운 세션 생성 성공 ! <br>");
			out.println("항공사 관리자 [ " + u_id + " ]님이 입장하였습니다. <p>");
		}
		else
		{
			response.sendRedirect("a_loginErr.jsp");
		}
	%>
	<a href="a_page.jsp"> 항공사 관리자 페이지로 이동하기 </a>
</body>
</html>	