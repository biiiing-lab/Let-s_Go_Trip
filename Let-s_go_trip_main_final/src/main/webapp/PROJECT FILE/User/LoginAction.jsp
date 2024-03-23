<%@ page import="java.io.PrintWriter" %>
<%@ page import="User.UserDAO" %><%--
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
    <title>LoginAction</title>
</head>
<body>
<jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userEmail"/>

<%
    // 객체 생성
    UserDAO userDAO = new UserDAO();
    String userID = null;

    if (session.getAttribute("userID") == null) {
        userID = (String) session.getAttribute("userID");
    }

    // 이미 로그인 된 상태인 경우
    if (userID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이미 로그인되었습니다.')");
        response.sendRedirect("../main.jsp");    // 메인 페이지로 이동
        script.println("</script>");
    }

    // 로그인 쿼리
    int result = userDAO.login(user.getUserID(), user.getUserPassword());

    // 정상적으로 로그인 됐을 경우
    if (result == 1) {
        session.setAttribute("userID", user.getUserID()); // 아이디 세션 저장
        response.sendRedirect("../main.jsp"); // 메인 이동

        // 비밀번호가 틀렸을 경우
    } else if (result == 0) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('비밀번호가 틀립니다.')");
        script.println("history.back()");   //이전 페이지로 사용자를 보냄
        script.println("</script>");

        // 이미 존재하는 아이디일 경우
    } else if (result == -1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('존재하지 않는 아이디입니다.')");
        script.println("history.back()");    //이전 페이지로 사용자를 보냄
        script.println("</script>");

        // DB 오류가 발생했을 경우
    } else if (result == -2) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('DB 오류가 발생했습니다.')");
        script.println("history.back()");    //이전 페이지로 사용자를 보냄
        script.println("</script>");
    }
%>

</body>
</html>
