<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<script type="text/javascript" src="${cpath }/js/TosAadJoin.js" ></script>
<link href="${cpath }/css/TosAndJoin.css" rel="stylesheet" type="text/css">

<main class="joinMain">
	<form action="POST" id="joinForm">
		<h3><label>이름</label></h3>
		<div class="joinNameDiv">
			<input type="text" name="joinName" id="joinName" class="joinName">
		</div>
		<div id="joinNameComfirmMsg"></div>
		
		<h3><label>아이디</label></h3>
		<div class="joinUserIdDiv">
			<input type="text" name="joinUserId" id="joinUserId" class="joinUserId">
		</div>
		<div id="joinIdComfirmMsg"></div>
		
		<h3><label>비밀번호</label></h3>
		<div id="joinUserPwDiv">
			<input type="password" name="joinUserPw" id="joinUserPw" class="joinUserPw">
		</div>
		<div id="joinPwComfirmMsg"></div>
		
		<h3><label>비밀번호 확인</label></h3>
		<div class="joinComfirmPwDiv">
			<input type="password" name="joinComfirmPw" id="joinComfirmPw" class="joinComfirmPw">
		</div>
		<div id="joinCPwComfirmMsg"></div>
		
		<h3><label>닉네임</label></h3>
		<div class="joinNickNameDiv">
			<input type="text" name="joinNickName" id="joinNickName" class="joinNickName">
		</div>
		<div id="joinNickNameComfirmMsg"></div>
		
		<h3><label>생년월일</label></h3>
		<div class="joinBirthDiv">
			<input type="date" name="joinBirth" id="joinBirth" class="joinBirth">
		</div>
		<div id="joinBirthComfirmMsg"></div>
		
		<h3><label>전화번호</label></h3>
		<div class="joinPhoneDiv">
			<input type="text" name="joinPhone1" id="joinPhone1" class="joinPhone1" maxlength="3" oninput="maxLengthCheck(this)">-
			<input type="text" name="joinPhone2" id="joinPhone2" class="joinPhone2" maxlength="4" oninput="maxLengthCheck(this)">-
			<input type="text" name="joinPhone3" id="joinPhone3" class="joinPhone3" maxlength="4" oninput="maxLengthCheck(this)">
		</div>
		<div id="joinPhoneComfirmMsg"></div>
		
		<h3><label>주소</label></h3>
		<div class="joinAddressDiv">
			<input type="text" name="joinAddress" id="joinAddress" class="joinAddress" required="required">
		</div>
		<div id="joinAddComfirmMsg"></div>
		<input type="button" value="회원가입" onclick="joinComfirm()">
	</form>
</main>

</body>
</html>