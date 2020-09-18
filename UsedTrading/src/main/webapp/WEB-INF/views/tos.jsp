<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link href="${cpath }/css/TosAndJoin.css" rel="stylesheet" type="text/css">
<main class="TosMain">
	
	<div class="TOSContents">약관 내용 뭘까요</div>
	<br>
	<div class="agreeTOSDiv">
		<input type="checkbox" name="agreeTOS" id="agreeTOS" class="agreeTOS">약관에 동의합니다.
	</div>
	<div class="agreeBtns">
		<a href="${cpath }/"><button>메인</button></a>
		<button onclick="tosConfirm()">다음</button> 
	</div>
</main>
<script type="text/javascript" src="${cpath }/js/TosAndJoin.js"></script>
</body>
</html>