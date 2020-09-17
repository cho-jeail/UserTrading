document.getElementById('userId').addEventListener('keyup', idlabelChange);
document.getElementById('userPw').addEventListener('keyup', pwlabelChange);

function idlabelChange(){
	if(this.value !== ''){
		document.querySelector('.loginFormId > label').style.display = 'none';
	}
	else{
		document.querySelector('.loginFormId > label').style.display = 'block';
	}
}

function pwlabelChange(){
	if(this.value !== ''){
		document.querySelector('.loginFormPw > label').style.display = 'none';
	}
	else{
		document.querySelector('.loginFormPw > label').style.display = 'block';
	}
}