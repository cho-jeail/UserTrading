<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<div>
	<!-- 로고 -->
	<div class="BoardLogo">
		<a href="${cpath }/"><img alt="" src=""></a>
	</div>
	
	<!-- 검색창 -->
	<div class="SearchDiv">
		<input type="text" id="SearchWord" placeholder="검색">
		<a href="javascript:void(0)" onclick="">
			<img alt="" src="">
		</a>
	</div>
	
	<!-- 상단 메뉴(대분류) -->
	<div class="TopMenuVar">
		<span>
			<a href="#">대분류 1</a>
		</span>
		<span>
			<a href="#">대분류 2</a>
		</span>
		<span>
			<a href="#">대분류 3</a>
		</span>
		<span>
			<a href="#">대분류 4</a>
		</span>
		<span>
			<a href="#">대분류 5</a>
		</span>
		<span>
			<a href="#">대분류 6</a>
		</span>
	</div>
</div>

<!-- 사이드 메뉴와 리스트 포함 -->
<div>
	<!-- 
		사이드 메뉴(소분류)
		자유 게시판, 신고 게시판, 공지사항 게시판
	 -->
	<div class="BoardSideMenu">
		<!-- 게시판 모음 -->
		<div>
			<ul type="disc">
				<li><a href="#">공지사항</a></li>
				<li><a href="#">신고 계시판</a></li>
				<li><a href="#">자유 게시판</a></li>
			</ul>
		</div>
		
		<!-- 상품 -->
		<div>
			<ul style="list-style: none;">
				<li>
					대분류 1
					<ul>
						<li><a href="#">소분류 1</a></li>
						<li><a href="#">소분류 2</a></li>
						<li><a href="#">소분류 3</a></li>
						<li><a href="#">소분류 4</a></li>
						<li><a href="#">소분류 5</a></li>
					</ul>
				</li>
				<li>
					대분류 2
					<ul>
						<li><a href="#">소분류 1</a></li>
						<li><a href="#">소분류 2</a></li>
						<li><a href="#">소분류 3</a></li>
						<li><a href="#">소분류 4</a></li>
						<li><a href="#">소분류 5</a></li>
					</ul>
				</li>
				<li>
					대분류 3
					<ul>
						<li><a href="#">소분류 1</a></li>
						<li><a href="#">소분류 2</a></li>
						<li><a href="#">소분류 3</a></li>
						<li><a href="#">소분류 4</a></li>
						<li><a href="#">소분류 5</a></li>
					</ul>
				</li>
				<li>
					대분류 4
					<ul>
						<li><a href="#">소분류 1</a></li>
						<li><a href="#">소분류 2</a></li>
						<li><a href="#">소분류 3</a></li>
						<li><a href="#">소분류 4</a></li>
						<li><a href="#">소분류 5</a></li>
					</ul>
				</li>
				<li>
					대분류 5
					<ul>
						<li><a href="#">소분류 1</a></li>
						<li><a href="#">소분류 2</a></li>
						<li><a href="#">소분류 3</a></li>
						<li><a href="#">소분류 4</a></li>
						<li><a href="#">소분류 5</a></li>
					</ul>
				</li>
				<li>
					대분류 6
					<ul>
						<li><a href="#">소분류 1</a></li>
						<li><a href="#">소분류 2</a></li>
						<li><a href="#">소분류 3</a></li>
						<li><a href="#">소분류 4</a></li>
						<li><a href="#">소분류 5</a></li>
					</ul>
				</li>
				
				
			</ul>
		</div>
	</div>
	
	<!-- 리스트 -->
	<div class="BoardList">
		<!-- 공지 사항 -->
		<div>
			
		</div>
		
		<!-- 상품 리스트 -->
		<div>
			
		</div>
	</div>
</div>
</body>
</html>