<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String u_id = request.getParameter("userID");
	String sql = "DELETE FROM members WHERE id = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);

	String sql1 = "delete from ticket where id = ?";
	PreparedStatement sm1 = conn.prepareStatement(sql1);
	sm1.setString(1, u_id);
	
	int count = sm.executeUpdate();
	int count1 = sm1.executeUpdate();
	
	if(count == 1){
			response.sendRedirect("drawSuccess.jsp");
			System.out.print("아이디 삭제 성공");
			if(count1 > 0)
				System.out.print("일괄 삭제 성공");
	}
	sm.close();
	conn.close();	
%>