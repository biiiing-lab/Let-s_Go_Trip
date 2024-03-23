<%--
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
    <title>Login</title>
</head>
<body class="is-preload">

<div id="wrapper">
    <div class="inner">
        <div class="inner">
            <form method = "post" action="./LoginAction.jsp">
                <br><br><br>
                <h3 style="text-align:center;"><a href="../main.jsp">Let's Go Trip!</a> </h3>
                <br>

                <h1 style="text-align:center;">로그인</h1>
                    <input style="text-align:center;" type="text" placeholder="아이디를 입력하세요." name ="userID" maxlength="15">
                    <input style="text-align:center;" type="password" placeholder="비밀번호를 입력하세요." name ="userPassword" maxlength="15"">
                <br>
                   <center> <input type="submit" value="로그인"></center>
            </form>

            <center>
            <a href="Join.jsp" target="_blank">회원가입</a>
            </center>


        </div>
    </div>
    <div class="col-lg-4"></div>
</div>

</body>
</html>
