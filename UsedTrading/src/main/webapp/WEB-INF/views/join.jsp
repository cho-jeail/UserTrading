<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link href="${cpath }/css/TosAndJoin.css" rel="stylesheet" type="text/css">

<main class="joinMain">
	<form action="POST" id="joinForm">
		<h3><label>이름</label></h3>
		<div class="joinNameDiv">
			<input type="text" name="joinName" id="joinName" class="joininput">
		</div>
		<div id="joinNameComfirmMsg"></div>
		
		<h3><label>아이디</label></h3>
		<div class="joinUserIdDiv">
			<input type="text" name="joinUserId" id="joinUserId" class="joininput">
			<button id="joinIdCheck">중복확인</button>
		</div>
		<div id="joinIdComfirmMsg"></div>
		
		<h3><label>비밀번호</label></h3>
		<div id="joinUserPwDiv">
			<input type="password" name="joinUserPw" id="joinUserPw" class="joininput">
		</div>
		<div id="joinPwRuleMsg">비밀번호는 8~20글자 사이, 특수문자를 사용해주세요</div>
		<div id="joinPwComfirmMsg"></div>
		
		<h3><label>비밀번호 확인</label></h3>
		<div class="joinComfirmPwDiv">
			<input type="password" name="joinComfirmPw" id="joinComfirmPw" class="joininput">
		</div>
		<div id="joinCPwComfirmMsg"></div>
		
		<h3><label>닉네임</label></h3>
		<div class="joinNickNameDiv">
			<input type="text" name="joinNickName" id="joinNickName" class="joininput">
			<button id="joinNickNameCheck">중복확인</button>
		</div>
		<div id="joinNickNameComfirmMsg"></div>
		
		<h3><label>생년월일</label></h3>
		<div class="joinBirthDiv">
			<input type="date" name="joinBirth" id="joinBirth" class="joininput">
		</div>
		<div id="joinBirthComfirmMsg"></div>
		
		<h3><label>전화번호</label></h3>
		<div class="joinPhoneDiv">
			<select id="FirstPnum"> 
				<c:forEach var="i" begin="0" end="9">
					<c:choose>
						<c:when test="${i } == 0">
							<option value="01 + ${i }" selected>01${i }</option>
						</c:when>
						<c:otherwise>
							<option value="01 + ${i }">01${i }</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</select>-
			<input type="text" name="joinPhone1" id="joinPhone1" class="joininput" maxlength="4" oninput="maxLengthCheck(this)">-
			<input type="text" name="joinPhone2" id="joinPhone2" class="joininput" maxlength="4" oninput="maxLengthCheck(this)">
		</div>
		<div id="joinPhoneComfirmMsg"></div>
		
		<h3><label>E-Mail</label></h3>
		<div class="joinEmailDiv">
			<input type="text" name="joinEmail1" id="joinEmail1" class="joininput">@
			<input type="text" name="joinEmail2" id="joinEmail2" class="joininput">
			<select id="kindsOfHostMail" onchange="selectOpts()">
				<option value="" selected>직접입력</option>
				<option value="google.com">google.com</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>	
			</select>
		</div>
		<div id="joinEmailComfirmMsg"></div>
		
		<h3><label>주소</label></h3>
		<div class="joinAddressDiv">
			<input type="text" name="joinAddress" id="joinAddress" class="joininput">
		</div>
		<div id="joinAddComfirmMsg"></div>
		<input type="button" value="회원가입" onclick="joinComfirm()">
	</form>
</main>
<script type="text/javascript" src="${cpath }/js/TosAadJoin.js" ></script>
</body>
</html>