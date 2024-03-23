        <%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
		<%@ page import="java.util.ArrayList" %>
		<%@ page import="java.util.Iterator" %>
		<%@ page import="java.net.URLEncoder" %>
		<%@ page import="java.io.IOException" %>
		<%@ page import="java.net.URL" %>
		<%@ page import="java.net.HttpURLConnection" %>
		<%@ page import="java.io.BufferedReader" %>
		<%@ page import="java.io.InputStreamReader" %>
		<%@ page import="User.LikeListDAO" %>
		<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
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
	<jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
	<jsp:setProperty name="user" property="userID"/>
	<jsp:setProperty name="user" property="userPassword"/>
	<jsp:setProperty name="user" property="userEmail"/>

	<!--메인 사진-->
	<style>
		.background {
			background-image: url("images/mainTextPicture/Seoul_main.jpg");
			background-size: contain;
			background-repeat: no-repeat;
			background-size: 100% 15%;
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
					<li><a href="main.jsp">홈</a></li>
					<li><a href="#info">정보</a></li>
					<li><a href="#weather">기후</a></li>
					<li><a href="#search">Editor pick</a></li>

					<%
						String userID = (String) session.getAttribute("userID");

						if (userID != null) {
					%>

					<li><a href="User/Likes.jsp">내 장소</a></li>

					<%
					}
					%>
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
						<span class="symbol"><img src="images/Symbols/img_seoullogo.png" width=100% height=20%
								alt="" /></span>
						<span class="title" style="color:white">Seoul</span>
					</a>
				</div>
			</header>

			<!--지역 지도-->
			<div id="main">
				<div class="inner">
					<h1 style="color:white">서울</h1>
					<br><br><br><br><br><br>
					<a id="info" name="info"></a>
					<span class="image main"><img src="images/map/seoul.png" alt="서울 지역 지도" /></span>
				</div>
			</div>

		</center>



		<!--중앙-->
		<!--첫번째 내용-->
		<div class="firstBlock" style="float:left;">
			<img src="./mainPicture/06O01106Ba82000.jpg" width="300px" height="300px" >

			<div class="divStyle">
				내용
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



		<center>
			<!--기후 정보-->
			<a id="weather" name="weather"></a>
			<div id="main">
				<br><br><br><br>

				<div class="inner">
					<h1>이번 주 서울 기후 정보</h1>
					<%

						StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/MidFcstInfoService/getMidFcst"); /*URL*/
						urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=LndsllcBk6gip%2BBc%2BRZB%2Bm0o3Q2rEez9hDTwaAj7aEkCy%2FiK8c8ipWGuzyJmgbR3E7nhjq%2FYRdDZrn8gd5Gvng%3D%3D"); /*Service Key*/
						urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
						urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
						urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("XML", "UTF-8")); /*요청자료형식(XML/JSON)Default: XML*/
						urlBuilder.append("&" + URLEncoder.encode("stnId","UTF-8") + "=" + URLEncoder.encode("109", "UTF-8")); /*108 전국, 109 서울, 인천, 경기도 등 (활용가이드 하단 참고자료 참조)*/
						urlBuilder.append("&" + URLEncoder.encode("tmFc","UTF-8") + "=" + URLEncoder.encode("202305290600", "UTF-8")); /*-일 2회(06:00,18:00)회 생성 되며 발표시각을 입력 YYYYMMDD0600 (1800)-최근 24시간 자료만 제공*/
						URL url = new URL(urlBuilder.toString());
						HttpURLConnection conn = (HttpURLConnection) url.openConnection();
						conn.setRequestMethod("GET");
						conn.setRequestProperty("Content-type", "application/json");
						System.out.println("Response code: " + conn.getResponseCode());

						BufferedReader rd;

						if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
						rd = new BufferedReader(new InputStreamReader(conn.getInputStream())); // 결과값
						}
						else {
						rd = new BufferedReader(new InputStreamReader(conn.getErrorStream())); // 에러값
						}

						ArrayList<String> sb = new ArrayList<>();

						String line;

					while ((line = rd.readLine()) != null) {
						sb.add(line);
						}

					 	Iterator<String> readWeather = sb.iterator();
						String weatherValue;

						while(readWeather.hasNext()) {
							weatherValue = readWeather.next();
							out.println(weatherValue);    
						}

					rd.close();
					conn.disconnect();
					%>

				</div>

			</div>

			<!--검색-->
			<a id="search" name="search"></a>

			<div id="main">

				<div class="inner">
					<h1>Editor's Pick!</h1>

					<form method="post">
						<input type="text" placeholder="지역을 입력하면 에디터가 추천해드릴게요!" style="text-align:center;"
							   name="SeoulTrable"> <br>
						<button type="submit" onclick="getData(); return true;">검색하기</button>
					</form>

					<%!
						// 변수 선언
						String addAddress = "";
						String addTourist_spot = "";
						String query;
						String firstRecommend; // 본 지역 다른 추천지(조인)
						String secondRecommend; // 근교 지역 다른 추전지(조인)
					%>

					<%
						// 검색 값 받아오기
						String result = request.getParameter("SeoulTrable");

						try {
							// JDBC Mysql 연동
							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lets_go_trip", "root", "wkddbqls0901"); // db 연결
							Statement stmt = con.createStatement();

							// 서울 지역 row 가져오기
							ResultSet check = stmt.executeQuery("select local_name from seoul");

							// row를 저장할 컬렉션 생성 (1) - 장소 검색용
							ArrayList<String> spot_list = new ArrayList<String>();

							// 지역 row를 저장(리스트 - add 함수 사용)
							while(check.next()) {
								String value = check.getString(1);
								spot_list.add(value);
							}

							Iterator<String> spot_list_iterator = spot_list.iterator();

							// 행정구역 전체 또는 일부만 검색이어도 나올 수 있도록 하는 코드
							while(spot_list_iterator.hasNext()) {
								String element = spot_list_iterator.next();

								if(result.equals(element)){
									query = element;
								}
								else if(element.contains(result)){
									query = element;
								}
							}

							// 쿼리 진행
							ResultSet rs = stmt.executeQuery("select address, tourist_spot from seoul where local_name = " + "\"" + query + "\"" + ";"); // 쿼리 연결

							// 쿼리가 제대로 실행됐을 때 실행
								while (rs.next()) {
									addAddress = rs.getString(1);
									addTourist_spot = rs.getString(2);
								}

							con.close();

						} catch (Exception e) {
							System.out.println(e);
						}
					%>

					<div id="map" style="width:700px;height:400px; position:relative;right:400px;"></div>

					<div class="inner" style="border: #333333; width: 700px; height: 400px; float:right; position:relative; bottom:400px; right: 90px; text-align: left">

						<h3 style="margin-bottom:20px"><%=addTourist_spot%></h3>

						<%
							if(userID != null) {
						%>
						<form action="User/LikesAction.jsp" method="post">
							<input type="hidden" name="like" value="<%=addTourist_spot%>">
							<input type="submit" name="check" value="장소 저장하기">
						</form>
						<%
							}
						%>

						<div style="margin-bottom:20px">
						</div>
						<br>
						<div>
							<form action="http://google.com" target="_blank">
								<input type="submit" name="site" value="사이트 접속">
							</form>

						</div>
						<h3 style="margin-bottom:20px">근교 비슷한 장소 추천</h3>


					</div>

					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ee6d5b33d7becb9fbdb9dcee16391bae&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div
								mapOption = {
									center: new kakao.maps.LatLng(37.403550300000, 126.930539000000), // 지도의 중심좌표 - 대림대학교 기준
									level: 3 // 지도의 확대 레벨
								};

						// 지도를 생성합니다
						var map = new kakao.maps.Map(mapContainer, mapOption);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();

						// 자바 변수 받기
						var address = '<%=addAddress%>';
						var addTourist_spot = '<%=addTourist_spot%>';

						// 주소로 좌표를 검색합니다
						geocoder.addressSearch(address, function(result, status) {

							// 정상적으로 검색이 완료됐으면
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map: map,
									position: coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시

								// 변수 사용을 위한 문자열 생성
								var divString = '<div style="width:150px;text-align:center;padding:6px 0; font-size:15px;">' + addTourist_spot + '</div>'

								var infowindow = new kakao.maps.InfoWindow({
									content: divString
								});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
					</script>

				</div>

			</div>



			<!--푸터-->

	</div>

	<!-- 스크립트 -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>