<%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-06-12
  Time: 오전 9:15
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
    <title>ChangePassword</title>
</head>
<body>
<div id="wrapper">
    <div class="inner">
        <div class="inner">
            <form method="post" action="ChangePasswordAction.jsp">
                <br><br><br>
                <h3 style="text-align:center;"><a href="../main.jsp">Let's Go Trip!</a></h3>
                <br>

                <h1 style="text-align:center;">비밀번호 변경</h1>
                <!--기존 비밀번호 입력-->
                <input style="text-align:center;" type="password" placeholder="기존 비밀번호를 입력하세요." name="beforePW"
                       minlength="8" maxlength="15">

                <!--1차 변경한 비밀번호-->
                <input style="text-align:center;" type="password" placeholder="변경한 비밀번호를 입력하세요." name="afterPW"
                       minlength="8" maxlength="15">

                <!--2차 변경한 비밀번호-->
                <input style="text-align:center;" type="password" placeholder="변경한 비밀번호를 다시 입력하세요." name="afterRePW"
                       minlength="8" maxlength="15">
                <br>
                <center><input type="submit" value="완료"></center>
            </form>
        </div>
    </div>
</div>
</body>
</html>
