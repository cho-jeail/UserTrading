<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<script type="text/javascript" src="${cpath }/js/TosAadJoin.js"></script>
<link href="${cpath }/css/TosAndJoin.css" rel="stylesheet" type="text/css">
<main class="TosMain">
	
	<div class="TOSContents"></div>
	<div class="agreeTOSDiv">
		<input type="checkbox" name="agreeTOS" id="agreeTOS" class="agreeTOS">약관에 동의합니다.
	</div>
	<div class="agreeBtns">
		<a href="${cpath }/"><button>취소</button></a>
		<button onclick="tosConfirm()">다음</button>
	</div>
	
</main>

</body>
</html>