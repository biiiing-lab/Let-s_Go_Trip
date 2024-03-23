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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <noscript>
        <link rel="stylesheet" href="../assets/css/noscript.css" />
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
    LikeListDAO2 likeListDAO2 = new LikeListDAO2();

    String userID = (String) session.getAttribute("userID");
    String firstLike = likeListDAO2.firstLike(userID);
    String secondLike = likeListDAO2.secondLike(userID);
    String thirdLike = likeListDAO2.thirdLike(userID);

    if(firstLike == null) {
        firstLike = "첫 번째 장소를 저장해주세요.";
    }

    if(secondLike == null) {
        secondLike = "두 번째 장소를 저장해주세요.";
    }

    if(thirdLike == null) {
        thirdLike = "세 번째 장소를 저장해주세요.";
    }

%>

<div class="inner">
    <div class="inner">
        <br><br><br>

        <h3 style="text-align:center;"><a href="../main.jsp">Let's Go Trip!</a> </h3>

        <br>

        <h1 style="text-align: center"><%=userID%>님의 저장한 Top3 장소</h1>

        <ul style="text-align: center">
            <li><h3><%=firstLike%></h3></li>
                <div style="flex-direction:row; display: flex; text-align: center; justify-content: center;">
                    <form action="" method="post">
                        <input type="submit" name="site" value="사이트 바로가기">
                    </form>

                    <form action="delLikesAction.jsp" method="post">
                        <input type="hidden" name="deleteLike" value="<%=firstLike%>">
                        <input type="submit" value="삭제하기">
                    </form>
                </div>

            <li><h3><%=secondLike%></h3></li>
            <div style="flex-direction:row; display: flex; text-align: center; justify-content: center;">
                <form action="" method="post">
                    <input type="submit" name="site" value="사이트 바로가기">
                </form>

                <form action="delLikesAction.jsp" method="post">
                    <input type="hidden" name="deleteLike" value="<%=secondLike%>">
                    <input type="submit" value="삭제하기">
                </form>
            </div>

            <li><h3><%=thirdLike%></h3></li>
            <div style="flex-direction:row; display: flex; text-align: center; justify-content: center;">
                <form action="" method="post">
                    <input type="submit" name="site" value="사이트 바로가기">
                </form>

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
