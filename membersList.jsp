<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
</head>
<body>
	항공사 > 등록 회원 관리
	<hr>
	<table border="1">
      <%  
     	String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_mail = request.getParameter("userMAIL");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT id, email FROM members");
		
		String str = "";
		
      	while(rs.next()){
            str += "<tr>"+"<td align='center'>"+rs.getString("id")+"</td>"+"<td>"+rs.getString("email")+"</td>"+
            		"<td><center><a href='drawCheck.jsp?userID="+rs.getString("id")+"'> X </a></center></td>"+ "</tr>";
         }
         out.print("<tr> <td> 아이디 </td> <td>이메일</td> <td>삭제</td></tr>");
         out.print(str);
      %>
     </table><p><p>
     
     <a href='a_page.jsp'> 항공사 관리자 페이지로 돌아가기 </a>
</body>
</html>	