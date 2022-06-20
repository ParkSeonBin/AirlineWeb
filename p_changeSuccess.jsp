<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 항공권 변경 </title>
</head>
<body>
	승객 > 항공권 변경
	<hr>
     <%  
     	String B_Arrival = request.getParameter("b_where");
     	String B_Depart = request.getParameter("b_when");
		String Arrival = request.getParameter("c_where");
		String[] aarrival = Arrival.split(",");
		
		String sql = "update ticket set arrival = ?, depart = ? where arrival = ? and depart =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, aarrival[0]);
        pstmt.setString(2, aarrival[1]);
        pstmt.setString(3, B_Arrival);
        pstmt.setString(4, B_Depart);
        
		
        int res = pstmt.executeUpdate();
        if(res > 0){
        	System.out.println("업데이트 성공");
        	response.sendRedirect("tiketprint.jsp");
        } else {
        	System.out.println("업데이트 실패");
			response.sendRedirect("p_change.jsp");
		}
	%>
</body>
</html>	