<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 확인</title>
</head>
<body>
	승객 > 예매 확인	
	<hr>
	<table border="1">
      <%  
      	String id = (String) session.getAttribute("memberId");
		String sql = "SELECT * FROM ticket where id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
	
       	ResultSet rs = null;
        rs = pstmt.executeQuery();
        
        String str = "";
        while(rs.next()){
            str += "<tr>"+"<td align='center'>"+rs.getString("arrival")+"</td>"+"<td>"+rs.getString("depart")+"</td>" +
            		"<td> <a href='p_change.jsp?where="+rs.getString("arrival")+"&when="+rs.getString("depart")+"'> 변경 </a> </td> <td> <a href='p_deleteSuccess.jsp?where="+rs.getString("arrival")+"&when="+rs.getString("depart") +"'> X </a></td> </tr>";
         }
         out.print("<tr> <th> 도착지 </th> <th>출발 시간</th> <th>티켓 변경</th> <th>티켓 삭제</th> </tr>");
         out.print(str);
      %>
     </table><p><p>
   
     <a href='userpage.jsp'> 회원 페이지 돌아가기 </a>
</body>
</html>