<%@ page import="java.io.PrintWriter" %>
<%@ page import="User.UserDAO" %>
<%@ page import="User.LikeListDAO" %><%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-05-29
  Time: 오후 1:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Let's go Trip!</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
    <link rel="stylesheet" href="../assets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="../assets/css/noscript.css"/>
    </noscript>
    <title>Join</title>
</head>
<body>
<jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userEmail"/>

<%
    // 전체 문항이 채워져야 회원가입 진행
    if (user.getUserID() == null || user.getUserPassword() == null || user.getUserEmail() == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('모든 문항을 입력해주세요.')");
        script.println("history.back()");    // 이전 페이지로 사용자를 보냄
        script.println("</script>");
    } else {
        UserDAO userDAO = new UserDAO();

        int result = userDAO.join(user);

        if (result == -1) { // 회원가입 실패시
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 존재하는 아이디입니다.')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");

        } else if(result == 0) { // 회원가입 성공시
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('회원가입이 성공했습니다. 로그인 페이지로 이동합니다.')");
            script.println("</script>");
            response.sendRedirect("Login.jsp"); // 로그인 페이지 이동
        }
    }
%>

</body>
</html>
