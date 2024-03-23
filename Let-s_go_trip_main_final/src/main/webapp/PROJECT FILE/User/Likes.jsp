<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="static java.util.Collections.list" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="User.LikeListDAO2" %><%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-05-28
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Let's go Trip!</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="../assets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="../assets/css/noscript.css"/>
    </noscript>
    <jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
    <jsp:setProperty name="user" property="userID"/>
    <jsp:setProperty name="user" property="userPassword"/>
    <jsp:setProperty name="user" property="userEmail"/>
    <jsp:setProperty name="user" property="first_like"/>
    <jsp:setProperty name="user" property="second_like"/>
    <jsp:setProperty name="user" property="third_like"/>
    <title>Likes</title>
</head>
<body class="is-preload">
<%
    // 객체 생성
    LikeListDAO2 likeListDAO2 = new LikeListDAO2();

    // 기존 DB Parameter값 가져오기
    String userID = (String) session.getAttribute("userID");
    String firstLike = likeListDAO2.firstLike(userID);
    String secondLike = likeListDAO2.secondLike(userID);
    String thirdLike = likeListDAO2.thirdLike(userID);

    // parameter 값이 null일 경우
    if (firstLike == null) {
        firstLike = "첫 번째 장소를 저장해주세요.";
    }

    if (secondLike == null) {
        secondLike = "두 번째 장소를 저장해주세요.";
    }

    if (thirdLike == null) {
        thirdLike = "세 번째 장소를 저장해주세요.";
    }

%>

<div class="inner">
    <div class="inner">
        <br><br><br>

        <h3 style="text-align:center;"><a href="../main.jsp">Let's Go Trip!</a></h3>

        <br>

        <h1 style="text-align: center"><%=userID%>님의 저장한 Top3 장소</h1>

        <!--첫 번째 항목-->
        <ul style="text-align: center">
            <li><h3><%=firstLike%>
            </h3></li>

            <div style="flex-direction:row; display: flex; text-align: center; justify-content: center;">
                <!--첫 번째 장소 사이트 이동 버튼-->
                <form action="" method="post">
                    <input type="submit" name="site" value="사이트 바로가기">
                </form>

                <!--첫 번째 장소 삭제 버튼-->
                <form action="delLikesAction.jsp" method="post">
                    <input type="hidden" name="deleteLike" value="<%=firstLike%>">
                    <input type="submit" value="삭제하기">
                </form>
            </div>

            <!--두 번째 항목-->
            <li><h3><%=secondLike%>
            </h3></li>
            <div style="flex-direction:row; display: flex; text-align: center; justify-content: center;">
                <!--두 번째 장소 사이트 이동 버튼-->
                <form action="" method="post">
                    <input type="submit" name="site" value="사이트 바로가기">
                </form>

                <!--두 번째 장소 삭제 버튼-->
                <form action="delLikesAction.jsp" method="post">
                    <input type="hidden" name="deleteLike" value="<%=secondLike%>">
                    <input type="submit" value="삭제하기">
                </form>
            </div>

            <!--세 번째 항목-->
            <li><h3><%=thirdLike%>
            </h3></li>
            <div style="flex-direction:row; display: flex; text-align: center; justify-content: center;">
                <!--세 번째 장소 삭제 버튼-->
                <form action="" method="post">
                    <input type="submit" name="site" value="사이트 바로가기">
                </form>

                <!--세 번째 장소 삭제 버튼-->
                <form action="delLikesAction.jsp" method="post">
                    <input type="hidden" name="deleteLike" value="<%=thirdLike%>">
                    <input type="submit" value="삭제하기">
                </form>
            </div>
        </ul>


    </div>
</div>

</body>
</html>
