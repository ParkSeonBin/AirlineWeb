 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 로그인 성공 </title>
</head>
<body>
	승객 > 로그인 성공
	<hr>
	
     <%  
     	String u_id = (String)request.getParameter("uID");
		String u_pw = (String)request.getParameter("uPW");
		
		String sql = "SELECT * FROM members where id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, u_id);
		
		ResultSet rs = null;
		rs = pstmt.executeQuery();
				
      	while(rs.next()){ 
            if(u_pw.equals(rs.getString("passwd")))
    		{
    			session.setAttribute("memberId", u_id);
    			session.setAttribute("memberPw", u_pw);
    			
    			out.println("새로운 세션 생성 성공 ! <br>");
    			out.println("관리자 [ " + u_id + " ]님이 입장하였습니다. <p>");
      		}
            else
    		{
            	response.sendRedirect("loginErr.jsp");
            	return;
    		}
		}
      	if (session == null || session.getAttribute("memberId") == null || session.getAttribute("memberId").equals(""))
      		response.sendRedirect("loginErr.jsp");
	%>
	<a href="userpage.jsp"> 회원 페이지로 이동하기 </a> <br><br>
</body>
</html>	