<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ include file="info.jsp" %> 
<html>
<head>
<title>로그인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String login_id = request.getParameter("id");
		String login_pw = request.getParameter("password");
		id = (String)session.getAttribute("id");
		pw = (String)session.getAttribute("pw");
	%>
	<p> <%
			if(id.equals(login_id) && pw.equals(login_pw)) {
				out.println("<script>alert('로그인에 성공하셨습니다.'); location.href='capston.html';</script>");
						
			}
			else {
				out.println("<script>alert('로그인에 실패하셨습니다.'); history.back();</script>");



			}
		%>

</body>
</html>