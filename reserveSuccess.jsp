<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 항공권 예매 </title>
</head>
<body>
	승객 > 항공권 예매
	<hr>
     <%  
     	String Arrival = request.getParameter("where");
		String id = (String) session.getAttribute("memberId");
		String[] aarrival = Arrival.split(",");
		
		String sql = "INSERT INTO ticket(id, arrival, depart) VALUES";
		sql += "('" + id + "','" +  aarrival[0] + "','" + aarrival[1] + "')";
		
		Statement sm = conn.createStatement();
		
		int count = sm.executeUpdate(sql);
		if(count == 1){
			out.println("예매에 성공헀습니다! <br><br>");
			out.println("<a href='userpage.jsp'> 회원 페이지 돌아가기 </a> <br><br>");
		}else{
			out.println("예매 실패!");
			response.sendRedirect("register.jsp");
		}
		sm.close();
		conn.close();	
	%>
</body>
</html>	