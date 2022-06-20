<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 항공편 변경 </title>
</head>
<body>
	항공사 > 항공편 변경
	<hr>
     <%  
     	String B_Arrival = request.getParameter("b_where");
    	String B_Depart = request.getParameter("b_when");
		String A_Arrival = request.getParameter("where");
		String A_Depart = request.getParameter("time");
		
		String sql = "update airtime set arrival = ?, depart = ? where arrival = ? and depart=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, A_Arrival);
        pstmt.setString(2, A_Depart);
        pstmt.setString(3, B_Arrival);
        pstmt.setString(4, B_Depart);
		
        
        int res = pstmt.executeUpdate();
        if(res > 0){
        	System.out.println("업데이트 성공");
        	response.sendRedirect("airprint.jsp");
        } else {
        	System.out.println("업데이트 실패");
			response.sendRedirect("a_change.jsp");
		}
	%>
</body>
</html>	