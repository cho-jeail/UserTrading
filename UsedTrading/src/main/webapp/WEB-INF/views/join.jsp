<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link href="${cpath }/css/TosAndJoin.css" rel="stylesheet" type="text/css">

<main class="joinMain">
	<form action="POST" id="joinForm">
		<h4><label>이름</label></h4>
		<div class="joinNameDiv">
			<input type="text" name="joinName" id="joinName" class="joininput">
			<div id="joinNameComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>아이디</label></h4>
		<div class="joinUserIdDiv">
			<input type="text" name="joinUserId" id="joinUserId" class="joininput">
			<button id="joinIdCheck">중복확인</button>
			<div id="joinIdComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>비밀번호</label></h4>
		<div id="joinUserPwDiv">
			<input type="password" name="joinUserPw" id="joinUserPw" class="joininput">
			<div id="joinPwRuleMsg">※비밀번호는 8~20글자 사이, 영어 대(소)문자, 특수문자를 사용해주세요.</div>
			<div id="joinPwComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>비밀번호 확인</label></h4>
		<div class="joinComfirmPwDiv">
			<input type="password" name="joinComfirmPw" id="joinComfirmPw" class="joininput">
			<div id="joinCPwComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>닉네임</label></h4>
		<div class="joinNickNameDiv">
			<input type="text" name="joinNickName" id="joinNickName" class="joininput">
			<button id="joinNickNameCheck">중복확인</button>
			<div id="joinNickNameComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>생년월일</label></h4>
		<div class="joinBirthDiv">
			<input type="date" name="joinBirth" id="joinBirth" class="joininput">
			<div id="joinBirthComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>전화번호</label></h4>
		<div class="joinPhoneDiv" id="joinPhoneDiv">
			<div class="joinPhoneDiv1">
				<div id="FirstPnumDiv">
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
					</select>
				</div>
				<input type="text" name="joinPhone1" id="joinPhone1" class="joininput" maxlength="4" oninput="maxLengthCheck(this)">-
				<input type="text" name="joinPhone2" id="joinPhone2" class="joininput" maxlength="4" oninput="maxLengthCheck(this)">
			</div>
			<div id="joinPhoneComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>E-Mail</label></h4>
		<div class="joinEmailDiv">
			<input type="text" name="joinEmail1" id="joinEmail1" class="joininput">@
			<input type="text" name="joinEmail2" id="joinEmail2" class="joininput">
			<select id="kindsOfHostMail" onchange="selectOpts()">
				<option value="" selected>직접입력</option>
				<option value="google.com">google.com</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>	
			</select>
			<div id="joinEmailComfirmMsg" class="joinMsgDiv"></div>
		</div>
		
		<h4><label>주소</label></h4>
		<div class="joinAddressDiv">
			<input type="text" name="joinAddress" id="joinAddress" class="joininput">
			<div id="joinAddComfirmMsg" class="joinMsgDiv"></div>
		</div>
		<div>
			<input id="joinSubmitBtn" type="button" value="회원가입" onclick="joinComfirm()">
		</div>
	</form>
</main>
<script type="text/javascript" src="${cpath }/js/TosAndJoin.js" ></script>
</body>
</html>