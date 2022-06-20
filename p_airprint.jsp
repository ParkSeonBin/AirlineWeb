<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 항공편 확인 </title>
</head>
<body>
	승객 > 항공편 확인
	<hr>
	<table border="1">
      <%  
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT arrival, depart FROM airtime");
		
		String str = "";
		
      	while(rs.next()){
            str += "<tr>"+"<td align='center'>"+rs.getString("arrival")+"</td>"+"<td>"+rs.getString("depart")+"</td> </tr>";
         }
         out.print("<tr> <th> 도착지 </th> <th>출발 시간</th> </tr>");
         out.print(str);
      %>
     </table><p><p>
     <a href='userpage.jsp'> 회원 페이지 돌아가기 </a>
    
</body>
</html>	