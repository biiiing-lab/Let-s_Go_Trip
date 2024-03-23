<%@ page import="java.io.PrintWriter" %>
<%@ page import="User.LikeListDAO" %><%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-06-07
  Time: 오후 9:09
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
    LikeListDAO likeListDAO = new LikeListDAO();

    // 아이디 세션, 삭제할 내역 선택
    String userId = (String) session.getAttribute("userID");
    String deleteLike = request.getParameter("deleteLike");

    // 삭제 메서드 사용
    int delLikeResult = likeListDAO.subSpot(userId, deleteLike);

    // 오류(1) - 아무런 변동 사항이 없을 경우
    if (delLikeResult == -1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('변경사항 X')");
        script.println("history.back()");
        script.println("</script>");

    // 오류(2) - DB, 쿼리문 실패
    } else if (delLikeResult == 0) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('장소를 삭제했습니다.')");
        script.println("history.back()");
        script.println("</script>");

    // 삭제 정상 작동
    } else if (delLikeResult == 1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('장소 삭제를 실패하였습니다. 다시 시도해주세요.')");
            script.println("history.back()");
            script.println("</script>");
    }

%>

</body>
</html>
