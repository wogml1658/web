<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
 <%@ include file="info.jsp" %>
<html>
<head>
<title>마이페이지</title>
<style>
        #wrap{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            margin-left:auto; 
            margin-right:auto;
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
</head>
<body>
	<% 
		id = (String)session.getAttribute("id");
		pw = (String)session.getAttribute("pw");
		name = (String)session.getAttribute("name");
		gender = (String)session.getAttribute("gender");
		birthyy = (String)session.getAttribute("birthyy");
		birthmm = (String)session.getAttribute("birthmm");
		birthdd = (String)session.getAttribute("birthdd");
		mail1 = (String)session.getAttribute("mail1");
		mail2 = (String)session.getAttribute("mail2");
		phone = (String)session.getAttribute("phone");
		addr = (String)session.getAttribute("addr");
	%>
	 <div id="wrap">
        <br><br>
        <font color="blue"><%=name%></font>님의 마이페이지입니다.
        
        <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=id%></td>
            </tr>
                        
            <tr>
                <td id="title">비밀번호</td>"WebContent/mypage.jsp"
                <td><%=pw%></td>
            </tr>
                    
            <tr>
                <td id="title">이름</td>
                <td><%=name%></td>
            </tr>
                    
            <tr>
                <td id="title">성별</td>
                <td><%=gender%></td>
            </tr>
                    
            <tr>
                <td id="title">생일</td>
                <td>
                    <%=birthyy%>년 
                    <%=birthmm%>월 
                    <%=birthdd%>일
                </td>
            </tr>
                    
            <tr>
                <td id="title">이메일</td>
                <td>
                    <%=mail1%>@<%=mail2%>
                </td>
            </tr>
                    
            <tr>
                <td id="title">휴대전화</td>
                <td><%=phone%></td>
            </tr>
            <tr>
                <td id="title">주소</td>
                <td>
                    <%=addr%>
                </td>
            </tr>
        </table>

        <br>
        <a href="capston.html">확인</a>
    </div>
</body>
</html>