<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<html>

<!--머릿글-->

<head>
	<title>Let's Go Trip!</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<link rel="stylesheet" href="assets/css/plusCSS.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<!--메인 사진-->
	<style>
		.background {
			background-image: url("images/mainTextPicture/Chungcheong_main.jpg");
			background-size: contain;
			background-repeat: no-repeat;
			background-size: 100% 10%;
		}
	</style>

</head>

<body class="is-preload, background">
	<!--세부 내용-->
	<div id="wrapper">

		<!--상단바-->
		<div>
			<nav>
				<ul>
					<li><a href="#cb">충북</a></li>
					<li><a href="#cbWeather">충북 날씨</a></li>
					<li><a href="#cn">충남</a></li>
					<li><a href="#cnWeather">충남 날씨</a></li>
					<li><a href="#search">Editor pick</a></li>
				</ul>
			</nav>
		</div>
		<div id="wrapper">

		<!-- 상단 지역 표기 -->
		<center>
			
				<header id="header">
					<div class="inner">
						<br>
						
						<a href="main.jsp" class="logo">
							<span class="symbol"><img src="images/Symbols/chNlogo.png" alt="충남/북 로고" width=20%
									height=20% alt="" style="float:left" />
								<img src="images/Symbols/chSOlogo.png" alt="충남/북 로고" width=20% height=20% alt="" />
							</span>
							<span class="title" style="color:white">Chungcheong-do</span>
							<br>
							<h1 style="color:white">충청도</h1>
						</a>
						<br><br><br><br><br><br>
					</div>
				</header>
			</center>


			<!--지역 지도-->
			<center>
				<div id="main">
					<div class="inner">
						<h1>충청북도</h1>
						
			<a id="cb" name="cb"></a>
						<span class="image main"><img src="images/map/cb.png" alt="충북 지역 지도" /></span>
					</div>
				</div>
			</center>

			 <!--첫번째 내용-->
		<div class="firstBlock" style="float:left;">
			<img src="./mainPicture/06O01106Ba82000.jpg" width="300px" height="300px" >

			<div class="divStyle">
				내용 입력
			</div>

			<form class="formStyle" action="http://google.com" target="_blank">
				<input type="submit" name="site" value="사이트 접속">
			</form>
		</div>

		<!--두번째 내용-->
		<div class="secondBlock">
			<img src="./mainPicture/06O01106Ba82000.jpg" width="300px" height="300px">

			<div class="divStyle">
				내용 입력
			</div>

			<form class="formStyle" action="http://google.com" target="_blank">
				<input type="submit" name="site" value="사이트 접속">
			</form>

		</div>

			<!--지역 지도-->
			<center>
				<div id="main">
					<div class="inner">
						<h1>충청남도</h1>
						<a id="cn" name="cn"></a>
						<span class="image main"><img src="images/map/cn.png" alt="충남 지역 지도" /></span>
					</div>
				</div>
			</center>

			
		<!--세번째 내용-->
		<div class="thirdBlock" style="float: left;">
			<img src="./mainPicture/06O01106Ba82000.jpg" width="300px" height="300px">

			<div class="divStyle">
				내용 입력
			</div>

			<form class="formStyle" action="http://google.com" target="_blank">
				<input type="submit" name="site" value="사이트 접속">
			</form>
		</div>

		<!--네번째 내용-->
		<div class="fourthBlock" style="float:none;">
			<img src="./mainPicture/06O01106Ba82000.jpg" width="300px" height="300px">

			<div class="divStyle">
				내용 입력
			</div>

			<form class="formStyle" action="http://google.com" target="_blank">
				<input type="submit" name="site" value="사이트 접속">
			</form>
		</div>

			<!--기후/검색/푸터-->
			<center>
				<!--기후-->
				<a id="cbWeather" name="cbWeather"></a>
				<div id="main">
					<div class="inner">
						<h1>충북 평균 기후</h1>
						<p>날씨 API 삽입</p>
					</div>

					<br>

					<a id="cnWeather" name="cnWeather"></a>
					<div class="inner">
						<h1>충남 평균 기후</h1>
						<p>날씨 API 삽입</p>
					</div>
				</div>

				<!--검색-->
				<a id="search" name="search"></a>
				<div id="main">
					<div class="inner">
						<h1>Editor's Pick!</h1>
						<form action="" method="post">
							<input type="text" placeholder="지역을 입력하면 에디터가 추천해드릴게요!" style="text-align:center;"
								name="SeoulTrable"><br>
							<button type="submit">검색하기</button>
						</form>
					</div>

				</div>

				<!--푸터-->
				<footer class="footer">
					<div class="inner">
						<br>
						<section>
							<h2>Let's Go Trip</h2>
						</section>
						<section>
							<h3>2023 Java Project</h3>
							<p>Chungcheong-do</p>
						</section>
					</div>
				</footer>

			</center>




			<!-- 스크립트 -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>

</html>