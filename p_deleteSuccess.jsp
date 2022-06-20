<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>

<%  
    String Arrival = request.getParameter("where");
	String Depart = request.getParameter("when");
	String id = (String) session.getAttribute("memberId");
	String sql = "delete from ticket where id = ? and arrival =? and depart =? ";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, Arrival);
    pstmt.setString(3, Depart);
        
    int res = pstmt.executeUpdate();
        if(res > 0){
        	System.out.println("삭제 성공");
        	response.sendRedirect("tiketprint.jsp");
        } else {
        	System.out.println("삭제 실패");
			response.sendRedirect("tiketprint.jsp");
		}
%>
