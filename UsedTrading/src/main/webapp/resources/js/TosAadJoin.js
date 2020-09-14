let checkedTos = document.getElementById('agreeTOS');	// 약관 동의 체크
let herfpath = document.location.href;	// 로컬 주소
let path = herfpath.replace(document.location.pathname, '/usedtrading/'); // 주소변환

// 휴대전화번호 입력칸별 입력제한 설정 메서드
function maxLengthCheck(ob){
	if (ob.value.length > ob.maxLength){
      ob.value = ob.value.slice(0, ob.maxLength);
    }  
}

// 약관 체크 메서드
function tosConfirm(){
	if(checkedTos.checked === false){
		alert('약관에 동의바랍니다.');
		checkedTos.focus();
	}
	else{
		location.href = path + "join/";
	}
}

// 회원가입 클릭 시 내용확인 메서드
function joinComfirm(){
	console.log("입력");
	formData = new FormData(document.getElementById('joinForm'));
	ent = formData.entries();
	ob = {};

	while(true) {
		next = ent.next();
		if(next.done == true) break;
		ob[next.value[0]] = next.value[1];
	}
	console.log(ob);
	
	if(ob.joinName === "" ){
		document.getElementById('joinNameComfirmMsg').innerText = '이름을 입력해주세요.';
	}	
	if(ob.joinUserId === "" ){
		document.getElementById('joinIdComfirmMsg').innerText = '아이디를 입력해주세요';
	}	
	if(ob.joinUserPw === "" ){
		document.getElementById('joinPwComfirmMsg').innerText = '비밀번호를 입력해주세요';
	}	
	if(ob.joinComfirmPw === "" ){
		document.getElementById('joinCPwComfirmMsg').innerText = '비밀번호를 입력해주세요';
	}	
	if(ob.joinNickName === "" ){
		document.getElementById('joinNickNameComfirmMsg').innerText = '닉네임을 입력해주세요.';
	}	
	if(ob.joinBirth === "" ){
		document.getElementById('joinBirthComfirmMsg').innerText = '생년월일을 입력해주세요';
	}	
	if(ob.joinPhone1 === "" || ob.joinPhone2 === "" || ob.joinPhone3 === ""){
		document.getElementById('joinPhoneComfirmMsg').innerText = '전화번호를 입력해 주세요';
	}
	if(ob.joinAddress === "" ){
		document.getElementById('joinAddComfirmMsg').innerText = '전화번호를 입력해 주세요';
	}
}


