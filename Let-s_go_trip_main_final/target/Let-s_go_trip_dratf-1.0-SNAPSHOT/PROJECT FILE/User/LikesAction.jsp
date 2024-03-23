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
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
  <link rel="stylesheet" href="../assets/css/main.css" />
  <noscript>
    <link rel="stylesheet" href="../assets/css/noscript.css" />
  </noscript>
  <title>LoginAction</title>
</head>
<body>
<jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userEmail"/>
<%
  LikeListDAO likeListDAO = new LikeListDAO();

  String userId = (String) session.getAttribute("userID");
  String like = request.getParameter("like");

  int likeResult = likeListDAO.addSpot(userId, like);

  if(likeResult == 1) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('저장되었습니다.')");
    script.println("history.back()");
    script.println("</script>");

  } else if (likeResult == 0) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('장소 추가를 실패하였습니다. 기존 장소를 삭제 후 다시 시도해주세요.')");
    script.println("history.back()");
    script.println("</script>");
  }


%>


</body>
</html>
