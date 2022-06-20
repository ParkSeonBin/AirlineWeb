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
	항공사 예매 프로그램 > 항공편 확인
	<hr>
	<table border="1">
      <%  
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT arrival, depart FROM airtime");
		
		String str = "";
		
      	while(rs.next()){
            str += "<tr>"+"<td align='center'>"+rs.getString("arrival")+"</td>"+"<td>"+rs.getString("depart")+"</td>"+
         			"<td> <a href='a_change.jsp?where="+rs.getString("arrival")+"&when="+rs.getString("depart")+"'> 변경 </a> </td> <td> <a href='a_deleteSuccess.jsp?where="+rs.getString("arrival")+"&when="+rs.getString("depart") +"'> X </a></td> </tr>";
         }
         out.print("<tr> <th> 도착지 </th> <th>출발 시간</th> <th>항공편 변경</th> <th>항공편 삭제</th> </tr>");
         out.print(str);
      %>
     </table><p><p>
     <a href='a_page.jsp'> 항공사 관리자 페이지로 돌아가기 </a>
    
</body>
</html>	