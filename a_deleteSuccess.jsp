<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>

     <%  
     	String Where = request.getParameter("where");
    	String Depart = request.getParameter("when");
		
		String sql = "delete from airtime where arrival =? and depart =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, Where);
        pstmt.setString(2, Depart);
        
		
        int res = pstmt.executeUpdate();
        if(res > 0){
        	System.out.println("삭제 성공");
        	response.sendRedirect("airprint.jsp");
        } else {
        	System.out.println("삭제 실패");
			response.sendRedirect("airprint.jsp");
		}
	%>
