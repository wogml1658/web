<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<html>
<head>
<title>로그인</title>
<style>
        #wrap{
            width:530px;
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
	 <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">로그인</font></b>
        <br><br><br>
        
        
        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 login_process.jsp -->
        
        <form method="post" action="login_process.jsp">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="20">   
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="password" maxlength="15">
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="로그인"/> 
        </form>
    </div>
</body>
</html>