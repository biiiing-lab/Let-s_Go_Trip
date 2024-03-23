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

<%
    // UserDAO 객체 생성
    UserDAO userDAO = new UserDAO();

    // Parameter값 가져오기
    String userID = (String) session.getAttribute("userID");
    String beforePW = request.getParameter("beforePW");
    String afterPW = request.getParameter("afterPW");
    String afterRePW = request.getParameter("afterRePW");

    // 변수 생성
    Connection con;
    PreparedStatement pstmt = null;
    ResultSet rs;
    String SQL = null;
    String result = null;

    // 기존 패스워드값 쿼리문을 통해 가져오기
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lets_go_trip", "-", "-");

        SQL = "select userPassword from userinfo where userId = " + "\"" + userID + "\"";
        pstmt = con.prepareStatement(SQL);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            result = rs.getString(1);
        }
    } catch (Exception e) {
        e.getMessage();
    }

    // 기존 패스워드와 입력값이 같으며 변경할 비밀번호 2번 입력 모두 같은 경우 실행
    if (beforePW.equals(result)) {
        if (afterRePW.equals(afterPW)) {
            int updatePW = userDAO.changePw(userID, afterRePW);

            if (updatePW == 0) { // 리턴값이 0일 경우 업데이트 성공 메세지
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('비밀번호가 성공적으로 업데이트 되었습니다.')");
                script.println("history.back()");
                script.println("</script>");

            } else if (updatePW == 1) { // 리턴값이 1일 경우 오류 발생 메세지
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('DB 오류 또는 변경에 실패했습니다.')");
                script.println("history.back()");
                script.println("</script>");
            }
        } else { // 재입력 비밀번호가 일치하지 않을 경우 알리는 메세지
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 일치하지 않습니다.')");
            script.println("history.back()");
            script.println("</script>");
        }
    } else { // 기존 비밀번호가 일치하지 않을 경우 알리는 메세지
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('기존 비밀번호가 일치하지 않습니다.')");
        script.println("history.back()");
        script.println("</script>");
    }
%>


</body>
</html>
