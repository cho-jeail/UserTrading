<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 메인페이지 상단 메뉴 -->
<div style="border:1px; solid; balck; height: 80px;">
	<!-- 로고 -->
	<div style="border:1px solid blue; float: left; width: 15%; height: 100%;">
		LOGO
	</div>
	
	<!-- 검색기능 -->
	<div style="border: 1px solid red; float: left; width: 75%; height: 100%;">
		<input type="text" placeholder="찾으려는 제품명을 입력하세요" style="width: 99%; height: 90%;">
	</div>
	
	<!-- 로그인 기능 -->
	<div style="border: 1px solid gold; float: left; width: 9%; height: 100%;">
		<a href="{cpath}/login/">로그인</a>
	</div>
</div>
<div>
	<label>
		여기는 최신 상품 등록글 입니다
	</label>
</div>
</body>
</html>