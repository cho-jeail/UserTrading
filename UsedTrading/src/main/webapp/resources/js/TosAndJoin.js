let checkedTos = document.getElementById('agreeTOS');	// 약관 동의 체크
let herfpath = document.location.href;	// 로컬 주소
let path = herfpath.replace(document.location.pathname, '/usedtrading/'); // 주소변환
let joinName = document.getElementById('joinName');
let joinUserId = document.getElementById('joinUserId');
let joinUserPw = document.getElementById('joinUserPw');
let joinComfirmPw = document.getElementById('joinComfirmPw');
let pNumbers = document.querySelectorAll('.joinPhoneDiv > input');
let joinEmail1 = document.getElementById('joinEmail1');
let joinEmail2 = document.getElementById('joinEmail2');
let nameReg = false;
let idReg = false;
let pwReg = false;
let pwChk = false;
let email1Reg = false;
let email2Reg = false;
// 이벤트
joinName.addEventListener('blur', nameRegexp);
joinUserId.addEventListener('blur', idRegexp);
joinUserPw.addEventListener('blur', passwordRegexp);
joinComfirmPw.addEventListener('blur', passwordCheck);
pNumbers.forEach(function(e){
	e.addEventListener('blur', phoneNumberCheck);
});
joinEmail1.addEventListener('blur', EmailCheck1);
joinEmail2.addEventListener('blur', EmailCheck2);


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

// 휴대전화번호 칸별 입력제한 설정 메서드
function maxLengthCheck(ob){
	if (ob.value.length > ob.maxLength){
      ob.value = ob.value.slice(0, ob.maxLength);
    }  
}

// 회원가입 클릭 시 내용확인 메서드
function joinComfirm(){
	inputs = document.querySelectorAll('input.joininput');
	cnt = 0;
	for(i = 0; i < inputs.length; i++) {
		if(inputs[i].value === '') {
			inputs[i].style.borderBottom = '1px solid red';
		}
		else {
			if(i === 0 && nameReg === false){
				inputs[i].style.borderBottom = '1px solid red';
			}
			else if(i === 1 && idReg === false){
				inputs[i].style.borderBottom = '1px solid red';
			}
			else if((i === 2 || i === 3) && (pwReg === false || pwChk === false)){
				inputs[i].style.borderBottom = '1px solid red';
			}
			else if((i === 8 || i === 9) && (email1Reg === false || email2Reg === false)){
				inputs[i].style.borderBottom = '1px solid red';
			}
			else{	
				inputs[i].style.borderBottom = '1px solid black';
				cnt++;
			}
		}
	}
	if(cnt !== inputs.length){
		alert('빨간 줄 확인 바랍니다');
		return;	
	}
	document.getElementById('joinForm').submit();
}

// 이름 정규 표현식
function nameRegexp(){
	const nameRegExp = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
	if(joinName.value !== '' && nameRegExp.test(joinName.value) === false){
		document.getElementById('joinNameComfirmMsg').innerText = '잘못된 형식입니다.';
		document.getElementById('joinNameComfirmMsg').style.color = 'red';
		nameReg = false;
	}
	else{
		joinName.style.borderBottom = '1px solid black';
		document.getElementById('joinNameComfirmMsg').innerText = '';
		nameReg = true;
	}
}

// 아이디 정규 표현식
function idRegexp(){
	const idRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z]){4,19}$/;
	if(joinUserId.value !== '' && idRegExp.test(joinUserId.value) === false){
		document.getElementById('joinIdComfirmMsg').innerText = '5~20자, 특수문자(- _ .)만 사용가능합니다.';
		document.getElementById('joinIdComfirmMsg').style.color = 'red';
		idReg = false;
	}
	else{
		document.getElementById('joinIdComfirmMsg').innerText = '';
		joinUserId.style.borderBottom = '1px solid black';
		idReg = true;
	}
}

// 비밀번호 정규 표현식
function passwordRegexp(){
	const regExp1 = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	pw = joinUserPw.value;
	if(pw !== '' && regExp1.test(pw) === false){
		document.getElementById('joinPwComfirmMsg').innerText = '비밀번호 형식이 맞지 않습니다.'
		document.getElementById('joinPwComfirmMsg').style.color = 'red';
		pwReg = false;
	}
	else if(pw === ''){
		document.getElementById('joinPwComfirmMsg').innerText = ''
		joinUserPw.style.borderBottom = '1px solid black';
		pwReg = false;
	}
	else{
		document.getElementById('joinPwComfirmMsg').innerText = '사용가능합니다.'
		document.getElementById('joinPwComfirmMsg').style.color = 'blue';
		joinUserPw.style.borderBottom = '1px solid black';
		pwReg = true;
	}
}

// 비밀번호 확인
function passwordCheck(){
	if(joinUserPw.value !== joinComfirmPw.value){
		document.getElementById('joinCPwComfirmMsg').innerText = '일치하지 않습니다.'
		document.getElementById('joinCPwComfirmMsg').style.color = 'red';
		pwChk = false;
	}
	else if(joinComfirmPw.value === ''){
		document.getElementById('joinCPwComfirmMsg').innerText = '작성되지 않았습니다.'
		document.getElementById('joinCPwComfirmMsg').style.color = 'red';
		pwChk = false;
	}
	else{
		document.getElementById('joinCPwComfirmMsg').innerText = '일치합니다.'
		document.getElementById('joinCPwComfirmMsg').style.color = 'blue';
		joinComfirmPw.style.borderBottom = '1px solid black';
		pwChk = true;	
	}
}

// 전화번호 확인
function phoneNumberCheck(){
	const regExp2 = /^[0-9]*$/;
	if(this.value !== '' && regExp2.test(this.value) === false){
		document.getElementById('joinPhoneComfirmMsg').innerText = '숫자만 작성해 주세요.';
		document.getElementById('joinPhoneComfirmMsg').style.color = 'red';
	}
	else{
		document.getElementById('joinPhoneComfirmMsg').innerText = '';
		this.style.borderBottom = '1px solid black';
	}
}

// 이메일 호스트메일 설정
function selectOpts(){
	opts = document.querySelectorAll('#kindsOfHostMail > option');
	opts.forEach(function(e){
		if(e.selected === true){
			if(e.value === ""){
				document.getElementById('joinEmail2').removeAttribute('readonly', 'readonly');
				document.getElementById('joinEmail2').value = "";
			}
			else{
				document.getElementById('joinEmail2').value = e.value;
				document.getElementById('joinEmail2').setAttribute('readonly', 'readonly');				
			}
		}
	});
}

//이메일 정규표현식1
function EmailCheck1(){
	const regExp3 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])/i;
	if(joinEmail1.value !== '' && regExp3.test(joinEmail1.value) === false){
		document.getElementById('joinEmailComfirmMsg').innerText = '이메일 형식이 맞지 않습니다.'
		document.getElementById('joinEmailComfirmMsg').style.color = 'red';
		email1Reg = false;
	}
	else{
		document.getElementById('joinEmailComfirmMsg').innerText = '';
		joinEmail1.style.borderBottom = '1px solid black';
		email1Reg = true;
	}
}

//이메일 정규표현식2
function EmailCheck2(){
	const regExp4 = /^([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	if(joinEmail2.value !== '' && regExp4.test(joinEmail2.value) === false){
		document.getElementById('joinEmailComfirmMsg').innerText = '이메일 형식이 맞지 않습니다.'
		document.getElementById('joinEmailComfirmMsg').style.color = 'red';
		mail2Reg = false;
	}
	else{
		document.getElementById('joinEmailComfirmMsg').innerText = '';
		joinEmail2.style.borderBottom = '1px solid black';
		mail2Reg = true;
	}
}



























