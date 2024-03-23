<%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-05-28
  Time: 오후 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="../assets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="../assets/css/noscript.css"/>
    </noscript>
    <title>Join</title>
</head>
<body class="is-preload">

<div id="wrapper">
    <div class="inner">
        <div class="inner">
            <form method="post" action="./JoinAction.jsp">

                <br><br><br>
                <h3 style="text-align:center;"><a href="../main.jsp">Let's Go Trip!</a></h3>
                <br>

                <h1 style="text-align:center;">회원가입</h1>

                <!--아이디 입력-->
                <input style="text-align:center;" type="text" placeholder="아이디를 8~15자 이내로 입력하세요." name="userID"
                       minlength="8" maxlength="15">

                <!--비밀번호 입력-->
                <input style="text-align:center;" type="password" placeholder="비밀번호를 8~15자 이내로 입력하세요."
                       name="userPassword" minlength="8" maxlength="15">

                <!--이메일 입력-->
                <input style="text-align:center;" type="email" placeholder="이메일" name="userEmail" maxlength='20'>
                <br>
                <center><input type="submit" value="완료"></center>
            </form>
        </div>
    </div>
    <div class="col-lg-4"></div>
</div>

</body>
</html>
