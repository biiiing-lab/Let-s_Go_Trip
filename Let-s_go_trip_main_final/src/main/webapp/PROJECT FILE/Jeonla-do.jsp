<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<html>

<!--머릿글-->

<head>
    <title>Let's Go Trip!</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
    <link rel="stylesheet" href="assets/css/plusCSS.css"/>
    <noscript>
        <link rel="stylesheet" href="assets/css/noscript.css"/>
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
	<script type="text/javascript">
		window.onload = function() { //페이지가 로드될 때 자동으로 실행되는 스크립트
            var searchParam = "<%= request.getParameter("JeonlaTrable") %>";

			if (searchParam === "") {
				alert("검색 결과가 없습니다.");
				return;
			}
		}
	</script>

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
                                                      style="float:left"/>
								<img src="images/Symbols/" alt="전남/북 로고" width=20% height=20% alt=""/>
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
                <span class="image main"><img src="images/map/" alt="전북 지역 지도"/></span>
            </div>
        </div>
    </center>


    <!--첫번째 내용-->
    <div class="firstBlock" style="float:left;">
        <img src="images/festival_picture/jeonju_munhwa_festival.jpeg" width="300px" height="300px" >

			<div class="divStyle">
				<strong>전주 문화재 야행</strong><br>
					일시: 2023.05.26(금)~2023.05.27(토)<br>
					장소: 전주한옥마을/전라북도 전주시 완산구 태조로 44(풍남동3가)<br>
					전화번호: 063-232-9937<br>
					입장료:무료<br>
			</div>

			<form class="formStyle" action="http://www.jeonjunight.com/" target="_blank">
				<input type="submit" name="site" value="사이트 접속">
			</form>
    </div>

    <!--두번째 내용-->
    <div class="secondBlock">
        <img src="images/festival_picture/jeongla_cheese_festival.jpeg" width="300px" height="300px">

			<div class="divStyle">
				<strong>임실 치즈축제</strong><br>
					일시: 2023.10.06(금)~2023.05.09(월)<br>
					장소: 전라북도 임실군 성수면 도인2길 50<br>
					전화번호: 063-643-3900<br>
					입장료:무료<br>
			</div>

			<form class="formStyle" action="http://www.imsilfestival.com/" target="_blank">
				<input type="submit" name="site" value="사이트 접속">
			</form>

    </div>


    <!--지역 지도-->
    <center>
        <div id="main">
            <div class="inner">
                <h1>전라남도</h1>
                <a id="jn" name="jn"></a>
                <span class="image main"><img src="images/map/" alt="전남 지역 지도"/></span>
            </div>
        </div>
    </center>

    <!--세번째 내용-->
    <div class="thirdBlock" style="float: left;">
        <img src="images/festival_picture/jeongla_meahwa_festival.jpeg" width="300px" height="300px">

        <div class="divStyle">
            <strong>광양 매화축제</strong><br>
                일시: 2023.03.10(금)~2023.03.19(일)<br>
                장소: 전라남도 광양시 전역(주 행사장/다압면 매화마을 일원)<br>
                전화번호: 061-797-2721<br>
                입장료:무료/일부 프로그램 유료<br>
        </div>

        <form class="formStyle" action="https://gwangyang.go.kr/tour/gallery.es?mid=a30301020000&bid=0011&act=view&list_no=14471" target="_blank">
            <input type="hidden" name="mid" value="a30301020000">
            <input type="hidden" name="bid" value="0011">
            <input type="hidden" name="act" value="view">
            <input type="hidden" name="list_no" value="14471">
            <input type="submit" name="site" value="사이트 접속">
        </form>
    </div>

    <!--네번째 내용-->
    <div class="fourthBlock" style="float:none;">
        <img src="images/festival_picture/jeonla_hampyeong_festival.jpeg" width="300px" height="300px">

        <div class="divStyle">
            <strong>함평 나비 대축제</strong><br>
                일시: 2023.04.28(금)~2023.05.07(일)<br>
                장소: 전라남도 함평군 함평읍 곤재로 27<br>
                전화번호: 061-320-2238<br>
                입장료: 유료<br>
        </div>

        <form class="formStyle" action="https://www.hpftf.or.kr/" target="_blank">
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
								name="JeonlaTrable"><br>
                    <button type="submit">검색하기</button>
                </form>
            </div>

        </div>

					<%!
                    // 변수 선언
                    String addAddress = "";
                    String addTourist_spot = "";
                    String query;
                    String firstRecommend; // 본 지역 다른 추천지(조인)
                    String secondRecommend; // 근교 지역 다른 추전지(조인)


					public ArrayList<String> processJoinQuery(ResultSet resultSet) throws SQLException {
						ArrayList<String> recommend_list = new ArrayList<>();

						while (resultSet.next()) {
							firstRecommend = resultSet.getString(1);
							recommend_list.add(firstRecommend);
							secondRecommend = resultSet.getString(2);
							recommend_list.add(secondRecommend);
						}

						return recommend_list;
					}
				%>

					<%
					// 검색 값 받아오기
					String result = request.getParameter("JeonlaTrable");

					String[] recommendArray = new String[3];
//					ArrayList<String> recommend_list = new ArrayList<String>();
					ResultSet check = null;
					try {
						// JDBC Mysql 연동
						Class.forName("com.mysql.cj.jdbc.Driver");
						// db 연결
						Connection con = DriverManager.getConnection("DB 보안처리");
						Statement stmt = con.createStatement();

						// 서울 지역 row 가져오기
						check = stmt.executeQuery("select local_name from jeonla");

						// row를 저장할 컬렉션 생성 (1) - 장소 검색용
						ArrayList<String> spot_list = new ArrayList<String>();


						// 지역 row를 저장(리스트 - add 함수 사용)
						while (check.next()) {
							String value = check.getString(1);
							spot_list.add(value);
						}

						Iterator<String> spot_list_iterator = spot_list.iterator();

						// 검색 결과가 있는지 여부를 나타내는 변수 선언
						boolean isSearchResult = false;

						// 행정구역 전체 또는 일부만 검색이어도 나올 수 있도록 하는 코드
						while (spot_list_iterator.hasNext()) {

							String element = spot_list_iterator.next();

							if (result.equals(element)) {
								query = element;
								isSearchResult = true;
								break;
							} else if (element.contains(result)) {
								query = element;
								isSearchResult = true;
								break;
							}
						}

						// 검색 결과가 없을 경우 알림창 표시
						if (isSearchResult==false) {
							out.println("<script>alert('" + result + "에 대한 검색 결과가 없습니다.');</script>");
						}


						// 쿼리 진행
						ResultSet rs = stmt.executeQuery("select address, tourist_spot from jeonla where local_name = " + "\"" + query + "\"" + ";"); // 쿼리 연결


						// 쿼리가 제대로 실행됐을 때 실행
						while (rs.next()) {
							addAddress = rs.getString(1);
							addTourist_spot = rs.getString(2);
						}

						//특정 장소 종류 타입 저장
						ResultSet local_tourist_type = stmt.executeQuery("SELECT tourist_type FROM jeonla WHERE local_name = '" + query + "'");
						String touristType = "";

						if (local_tourist_type.next()) {
							touristType = local_tourist_type.getString("tourist_type");
						}

						//특정 장소 이름 저장
						ResultSet local = stmt.executeQuery("SELECT tourist_spot FROM jeonla WHERE local_name = '" + query + "'");

						String local_spot = null;
						if (local.next()) {
							local_spot = local.getString("tourist_spot");
						}


						// join 질의를 통해 다른 지역 추천
						ResultSet joinQuery = stmt.executeQuery("SELECT DISTINCT a.tourist_spot, a.address FROM jeonla a JOIN jeonla b " +
								"ON a.tourist_type = b.tourist_type WHERE a.tourist_type = '" + touristType + "'" +
								"and a.tourist_spot NOT IN('" + local_spot + "') LIMIT 3");//검색한 지역은 안나오게끔 함

                        //함수 불러서 배열 저장
						ArrayList<String> recommend_list = processJoinQuery(joinQuery);


						//  배열 저장
						recommendArray = recommend_list.toArray(new String[0]);//??????????


						// 추가 조인문
						int rowCount = recommendArray.length;
						ResultSet joinQuery4 = null;
						ArrayList<String> recommend_list4 = new ArrayList<>();

						if (rowCount == 4) {
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM chungcheong " +
										"WHERE local_name='계룡시' ");
								recommend_list4 = processJoinQuery(joinQuery4);

						} else if (rowCount == 2) {
							if ("nature".equals(touristType)) {
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM jeju " +
										"WHERE tourist_type ='nature' LIMIT 2");
								recommend_list4 = processJoinQuery(joinQuery4);

							} else {
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM gyeongsang " +
										"WHERE tourist_type ='museum' LIMIT 2");
								recommend_list4 = processJoinQuery(joinQuery4);

							}

						} else if(recommend_list.isEmpty()) {

							if ("temple".equals(touristType)) {
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM chungcheong " +
										"WHERE tourist_type ='temple' LIMIT 3");
								recommend_list4 = processJoinQuery(joinQuery4);

							} else if ("palace".equals(touristType)){
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM chungcheong " +
										"WHERE tourist_type ='palace' LIMIT 3");
								recommend_list4 = processJoinQuery(joinQuery4);

							} else if ("island".equals(touristType)){
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM jeju " +
										"WHERE tourist_type ='island' LIMIT 3");
								recommend_list4 = processJoinQuery(joinQuery4);

							} else if ("field".equals(touristType)){
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM jeju " +
										"WHERE local_name ='안덕면' or local_name ='우도'");
								recommend_list4 = processJoinQuery(joinQuery4);

							} else if ("arboretum".equals(touristType)){
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM jeju " +
										"WHERE tourist_type ='arboretum' LIMIT 3");
								recommend_list4 = processJoinQuery(joinQuery4);

							} else if ("street".equals(touristType)){
								joinQuery4 = stmt.executeQuery("SELECT tourist_spot, address FROM gyeongsang " +
										"WHERE tourist_type ='experience' LIMIT 3");
								recommend_list4 = processJoinQuery(joinQuery4);

							}
						}

						if(joinQuery4 == null){       //추가 코드 필요 없음 넘어가기

						}

						//쿼리 추가하기
						if (joinQuery4 != null) {
							int additionalRowCount = recommend_list4.size();
							recommendArray = Arrays.copyOf(recommendArray, rowCount + additionalRowCount);
							int index = rowCount; // 추가 요소를 저장할 인덱스 초기화

							for (String recommendation : recommend_list4) {
								recommendArray[index] = recommendation;
								index++;
							}
						}



						int i = 0;
						Iterator<String> iterator = recommend_list.iterator();


						while (iterator.hasNext()) {
							recommendArray[i] = iterator.next();
							i++;
						}


					} catch (Exception e) {
						System.out.println(e);
					}
				%>

				<div id="map" style="width:700px;height:400px; position:relative;right:400px;"></div>

				<div class="inner" style="border: #333333; width: 700px; height: 400px; float:right; position:relative; bottom:400px; right: 90px; text-align: left">

					<% if (addTourist_spot == null) {
						addTourist_spot = "지역을 입력해주세요.";
					} %>

					<h3 style="margin-bottom:20px"><%=addTourist_spot%></h3>
					<div style="margin-bottom:20px">
						내용 입력
					</div>
					<br>
					<div>
						<form action="http://google.com" target="_blank">
							<input type="submit" name="site" value="사이트 접속">
						</form>
					</div>

					<h3 style="margin-bottom:20px">근교 비슷한 장소 추천</h3>

					<ul>

						<%
							String result2 = request.getParameter("JeonlaTrable");

							if(result2 == null || result2.isEmpty()){  //받은 입력값이 없으면 결과가 나오지 않음
								out.println("");

							}
							else{
								for (int j = 0; j < recommendArray.length; j=j+2) {
									if (recommendArray[j] != null && recommendArray[j+1] != null) {
										out.println(recommendArray[j] + "&nbsp;&nbsp;"+" 주소: " + recommendArray[j + 1] + "<br>");
									}
								}
							}


						%>


					</ul>


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