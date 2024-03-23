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
			background-image: url("images/mainTextPicture/Jeonla_main.png");
			background-size: contain;
			background-repeat: no-repeat;
			background-size: 100% 14%;
		}
	</style>

</head>

<!--본문-->

<body class="is-preload, background">

	<!--세부 내용-->
	<div id="wrapper">

		<!--상단바-->
			<div>
				<nav>
					<ul>
						<li><a href="#jb">전북</a></li>
						<li><a href="#jbWeather">전북 날씨</a></li>
						<li><a href="#jn">전남</a></li>
						<li><a href="#jnWeather">전남 날씨</a></li>
						<li><a href="#search">Editor pick</a></li>
					</ul>
				</nav>
			</div>

		<!-- 상단 지역 표기 -->
		<center>
			<!--로고, 지역 표기-->
				<header id="header">
					<div class="inner">

						<br>

						<a href="main.jsp" class="logo">
							<span class="symbol"><img src="images/Symbols/" alt="전남/북 로고" width=20% height=20% alt=""
									style="float:left" />
								<img src="images/Symbols/" alt="전남/북 로고" width=20% height=20% alt="" />
							</span>
							<span class="title" style="color:white">Jeonla-do</span>
							
							<br>

							<h1 style="color:white">전라도</h1>
						</a>

						<br><br><br><br><br><br>
					</div>
				</header>
			</center>



			<!--지역 지도-->
			<center>
				<div id="main">
					<div class="inner">
						<h1>전라북도</h1>
						<a id="jb" name="jb"></a>
						<span class="image main"><img src="images/map/" alt="전북 지역 지도" /></span>
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
						<h1>전라남도</h1>
						<a id="jn" name="jn"></a>
						<span class="image main"><img src="images/map/" alt="전남 지역 지도" /></span>
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
				<div id="main">
					<a id="jbWeather" name="jbWeather"></a>
					<div class="inner">
						<h1>전북 평균 기후</h1>
						<p>날씨 API 삽입</p>
					</div>

					<br>

					<a id="jnWeather" name="jbWeather"></a>
					<div class="inner">
						<h1>전남 평균 기후</h1>
						<p>날씨 API 삽입</p>
					</div>
				</div>

				<!--검색-->
				<div id="main">
					<a id="search" name="search"></a>
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
							<p>Gyeongsang-do</p>
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