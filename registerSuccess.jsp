<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 항공편 등록 </title>
</head>
<body>
	항공사 > 항공편 등록
	<hr>
     <%  
     	String Arrival = request.getParameter("where");
		String Depart = request.getParameter("time");
		
		String sql = "INSERT INTO airtime(arrival, depart) VALUES";
		sql += "('" + Arrival + "','" + Depart + "')";
		
		Statement sm = conn.createStatement();
		
		int count = sm.executeUpdate(sql);
		if(count == 1){
			out.println("등록에 성공헀습니다! <br><br>");
			out.println("<a href='a_page.jsp'> 항공사 관리자 페이지로 돌아가기 </a> <br><br>");
		}else{
			out.println("등록 실패!");
			response.sendRedirect("register.jsp");
		}
		sm.close();
		conn.close();	
	%>
</body>
</html>	