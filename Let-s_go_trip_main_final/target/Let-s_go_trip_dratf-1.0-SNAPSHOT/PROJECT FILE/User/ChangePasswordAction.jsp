<%@ page import="User.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: youbi
  Date: 2023-06-12
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="User.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userEmail"/>

<% // 자바 코드 삽입
    UserDAO userDAO = new UserDAO();

    String userID = (String) session.getAttribute("userID");
    String beforePW = request.getParameter("beforePW");
    String afterPW = request.getParameter("afterPW");
    String afterRePW = request.getParameter("afterRePW");

    Connection con;
    PreparedStatement pstmt = null;
    ResultSet rs;
    String SQL = null;
    String result = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lets_go_trip", "root", "wkddbqls0901");

        SQL = "select userPassword from userinfo where userId = " + "\"" + userID + "\"";
        pstmt = con.prepareStatement(SQL);
        rs = pstmt.executeQuery();
        while(rs.next()) {
            result = rs.getString(1);
        }
    } catch (Exception e) {
        e.getMessage();
    }

    if(beforePW.equals(result)) {
        if(afterRePW.equals(afterPW)) {
            int updatePW = userDAO.changePw(userID, afterRePW);

            if(updatePW == 0) {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('비밀번호가 성공적으로 업데이트 되었습니다.')");
                script.println("history.back()");
                script.println("</script>");

            } else if (updatePW == 1) {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('DB 오류 또는 변경에 실패했습니다.')");
                script.println("history.back()");
                script.println("</script>");
            }
        }
        else {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 일치하지 않습니다.')");
            script.println("history.back()");
            script.println("</script>");
        }
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('기존 비밀번호가 일치하지 않습니다.')");
        script.println("history.back()");
        script.println("</script>");
    }
%>



</body>
</html>
