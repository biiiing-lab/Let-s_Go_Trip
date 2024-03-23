<%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-06-02
  Time: 오후 3:08
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
    <title>Logout</title>
</head>

<body>
<%
    session.invalidate(); // 세션값 제거
%>
<script>
    location.href = '../main.jsp'; <!-- 메인 페이지로 이동 -->
</script>
</body>
</html>
