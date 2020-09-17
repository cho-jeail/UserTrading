<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link href="${cpath }/css/login.css" rel="stylesheet" type="text/css">
	
<main class="loginMain">
	<div class="loginMainLogo">LOGO</div>
	<div class="loginMainDiv">
		<form class="loginMainForm">
			<div class="loginFormId">
				<label for="userId">아이디</label>
				<input type="text" name="userId" id="userId" class="userId">
			</div>
			<div class="loginFormPw">
				<label for="userPw">비밀번호</label>
				<input type="password" name="userPw" id="userPw" class="userPw">
			</div>
				
			<div class="loginSend">
				<input type="button" value="로그인">
			</div>
			
			<div class="saveUserIdDiv">
				<input type="checkbox" name="saveUserId" id="saveUserId" class="saveUserId">아이디 저장
			</div>
			
			<div class="searchIdPwAndJoin">
				<div class="searchIdPwDiv">
					<a href="">아이디 찾기</a> / <a href="">비밀번호 칮기</a>
				</div>
				<div class="JoinDiv">
					<a href="${cpath }/tos/">회원가입</a>
				</div>
			</div>
			
		</form>		
	</div>
	<div>
		
	</div>
</main>
	
<script type="text/javascript" src="${cpath }/js/login.js" ></script>
	
</body>
</html>