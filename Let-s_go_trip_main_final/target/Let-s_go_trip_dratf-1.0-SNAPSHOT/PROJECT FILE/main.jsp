<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>

<head>
	<title>Let's go Trip!</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
	<jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
	<jsp:setProperty name="user" property="userID"/>
	<jsp:setProperty name="user" property="userPassword"/>
	<jsp:setProperty name="user" property="userEmail"/>
</head>

<body class="is-preload">
	<!-- 본문 -->
	<div id="wrapper">

		<header id="header">
			<div class="inner">

				<!-- 로고 -->
				<a href="main.jsp" class="logo">
					<span class="symbol"><img src="images/Symbols/daelimlogo.png" alt="" /></span><span
						class="title">Let's Go Trip!</span>
				</a>

				<!-- 네비게이션 -->
				<nav>
					<ul>
						<li><a href="#menu">Menu</a></li>
					</ul>
				</nav>

			</div>
		</header>

		<!-- 메뉴바/회원가입 -->
		<nav id="menu">
			<h2>Menu</h2>

			<%
				String userID = (String) session.getAttribute("userID");

				if (userID != null) {
			%>

			<h3>반갑습니다, <%=userID%>님. </h3>
			<ul>
				<li><a href="./User/Likes.jsp" target="_blank">저장한 장소</a></li>
				<li><a href="./User/ChnagePassword.jsp" target="_blank">비밀번호 변경</a></li>
				<li><a href="./User/LogoutAction.jsp" target="_blank">로그아웃</a></li>
			</ul>

			<%
				} else if(userID == null) {
			%>

			<ul>
				<li><a href="./User/Login.jsp" target="_blank">로그인</a></li>
				<li><a href="./User/Join.jsp" target="_blank">회원가입</a></li>
			</ul>

			<%
				}
			%>



		</nav>
				

		</header>
		<!-- 본문 -->
		<div id="main">
			<div class="inner">
				<header>
					<h1>국내 여행 정보를 알려드릴게요.</h1>
					<h2>Where I go?</h2>
				</header>
				<section class="tiles">

					<!--서울-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Seoul_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Seoul.jsp" target="_blank">
							<h2>Seoul</h2>
							<div class="content">
								<p>동행 · 매력 특별시 서울 </p>
							</div>
						</a>
					</article>

					<!--경기-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Gyeonggi_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Gyeonggi-do..jsp" target="_blank">
							<h2>Gyeonggi-do</h2>
							<div class="content">
								<p>GO GREAT, GYEONGGI</p>
							</div>
						</a>
					</article>

					<!--인천-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Incheon_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Incheon..jsp" target="_blank">
							<h2>Incheon</h2>
							<div class="content">
								<p>인천의 꿈, 대한민국의 미래</p>
							</div>
						</a>
					</article>

					<!--강원-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Gwangwondo_main.png" width="500px" height="380px" alt="" />
						</span>
						<a href="Gangwon-do.jsp" target="_blank">
							<h2>Gangwon-do</h2>
							<div class="content">
								<p>새로운 강원도! 특별 자치시대!</p>
							</div>
						</a>
					</article>

					<!--충청-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Chungcheong_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Chungcheong-do..jsp" target="_blank">
							<h2>Chungcheong-do</h2>
							<div class="content">
								<p>생명과 태양의 땅 충북 <br> 힘쎈충남 대한민국의 힘 </p>
							</div>
						</a>
					</article>

					<!--경상-->
					<article class="style1">				
						<span class="image">
							<img src="images/main_picture/Gyeongsangdo_main.png" width="500px" height="380px" alt="" />
						</span>
						<a href="Gyeongsang-do..jsp" target="_blank">
							<h2>Gyeongsang-do</h2>
							<div class="content">
								<p>경북의 힘으로 새로운 대한민국 <br> 활기찬 경남 행복한 도민</p>
							</div>
						</a>
					</article>

					<!--대전-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Daejeon_main.png" width="500px" height="380px" alt="" />
						</span>
						<a href="Daejeon.jsp" target="_blank">
							<h2>Daejeon</h2>
							<div class="content">
								<p>Daejeon is U</p>
							</div>
						</a>
					</article>

					<!--제주-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Jeju_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Jejudo.jsp" target="_blank">
							<h2>Jeju</h2>
							<div class="content">
								<p>소통으로 여는 행복한 제주시</p>
							</div>
						</a>
					</article>

					<!--전라-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Jeonla_main.png" width="500px" height="380px" alt="" />
						</span>
						<a href="Jeonla-do.jsp" target="_blank">
							<h2>jeonla-do</h2>
							<div class="content">
								<p>함꼐 혁신, 함께 성공, 새로운 전북 <br> 생명의 땅 으뜸 전남</p>
							</div>
						</a>
					</article>

					<!--광주-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Gwangju_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Gwangju.jsp" target="_blank">
							<h2>Gwangju</h2>
							<div class="content">
								<p>희망도시 행복 광주</p>
							</div>
						</a>
					</article>

					<!--대구-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Daegu_main.png" width="500px" height="380px" alt="" />
						</span>
						<a href="Daegu..jsp" target="_blank">
							<h2>Daegu</h2>
							<div class="content">
								<p>자유와 활력이 넘치는 파워풀 대구</p>
							</div>
						</a>
					</article>

					<!--울산/부산-->
					<article class="style1">
						<span class="image">
							<img src="images/main_picture/Busan_main.jpg" width="500px" height="380px" alt="" />
						</span>
						<a href="Ulsan_Busan.jsp" target="_blank">
							<h2>Ulsan, Busan</h2>
							<div class="content">
								<p>ULSAN THE RISING CITY <br> BUSAN IS GOOD</p>
							</div>
						</a>
					</article>
				</section>
			</div>
		</div>

		<!-- Footer -->

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>