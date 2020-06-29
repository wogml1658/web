<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<html>
<head>
<title>회원가입</title>
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
<script type="text/javascript">
	function check() {
		var form = document.account;
		
		if(form.id.value == "") {
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return false;
		} else if(form.id.value.length < 6 || form.id.value.length > 20) {
			alert("아이디는 6자 이상, 20자 이하로 입력해주세요.");
			form.id.focus();
			return false;
		} else if(form.password.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.password.focus();
			return false;
		} else if(form.password.value.length < 6 || form.password.value.length > 15) {
			alert("비밀번호는 6자 이상, 15자 이하로 입력해주세요.");
			form.password.focus();
			return false;
		} else if(form.password.value != form.passwordcheck ) {
			alert("비밀번호가 일치하지 않습니다.");
			form.passwordcheck.focus();
			return false;
		} else if(form.birthyy.value == "" || form.birthmm.value == "" || form.birthdd.value == "") {
			alert("생년월일을 모두 입력해주세요.");
			form.birthyy.focus();
			return false;
		} else if(form.birthyy.value > 2020) {
			alert("연도를 다시 입력해주세요.");
			form.birthyy.focus();
			return false;
		} else if(form.birthdd.value < 1 && form.birthdd.value > 31) {
			alert("일을 다시 입력해주세요.");
			form.birthdd.focus();
			return false;
		} else if(form.mail1.value == "") {
			alert("이메일을 입력해주세요.");
			form.mail1.focus();
			return false;
		} else if(form.phone.value == "") {
			alert("휴대폰 번호를 입력해주세요.");
			form.phone.focus();
			return false;
		} else if(form.address.value == "") {
			alert("주소를 입력해주세요.");
			form.address.focus();
			return false;
		}
	}
</script>
<body>
	 <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        
        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 account_process.jsp -->
        
        <form name="account" method="post" action="account_process.jsp">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="20" placeholder="6자 이상">   
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="password" maxlength="15" placeholder="6자 이상">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="passwordcheck" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">생일</td>
                    <td>
                        <input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6" >
                        <select name="birthmm">
                            <option value="">월</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4" >
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="mail1" maxlength="30">@
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">휴대전화</td>
                    <td>
                        <input type="text" name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="가입" onclick="check()"/> 
            <input type="button" value="취소" onclick="history.go(-1)">
        </form>
    </div>
</body>
</html>