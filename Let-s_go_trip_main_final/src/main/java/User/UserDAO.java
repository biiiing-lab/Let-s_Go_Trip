package User;

import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;

public class UserDAO {
    private Connection con; // 연결 객체 생성
    private PreparedStatement pstmt; // 실행 객체 생성
    private ResultSet rs; // 결괏값 저장 객체 생성
    String SQL = null; // SQL 정의

    // DB 가지고 오기
    public UserDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lets_go_trip", "root", "wkddbqls0901");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // 로그인 메서드
    public int login(String userId, String userPassWord) {

        SQL = "select userPassword from userinfo where userId = ?";

        // 로그인 로직
        try {
            pstmt = con.prepareStatement(SQL);
            pstmt.setString(1, userId);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                if (rs.getString(1).equals(userPassWord)) {
                    return 1; // 로그인 성공
                } else {
                    return 0; // 비밀번호 틀림
                }
            }
            return -1; // 아이디 없음
        } catch (Exception e) {
            System.out.println(e);
        }
        return -2; // db 오류
    }

    // 회원가입 메서드
    public int join(User user) {
        SQL = "insert into userinfo values(?, ?, ?, ?, ?, ?)";

        // 회원가입 로직
        try {
            pstmt = con.prepareStatement(SQL);

            // 각 ? 자리 인덱스 값, 속성값
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getUserPassword());
            pstmt.setString(3, user.getUserEmail());
            pstmt.setString(4, user.getFirst_like());
            pstmt.setString(5, user.getSecond_like());
            pstmt.setString(6, user.getThird_like());
            pstmt.executeUpdate();
            return 0; // 가입 성공

        } catch (Exception e) {
            System.out.println(e);
        }

        return -1; // db 오류
    }

    // 비밀번호 변경 메서드
    public int changePw(String userId, String userPw) {
        SQL = "update userinfo set userPassword = " + "\"" + userPw + "\"" + " where userId = " + "\"" + userId + "\"";

        // 비밀번호 변경 로직
        try {
            pstmt = con.prepareStatement(SQL);
            pstmt.executeUpdate();
            return 0; // 비밀번호 업데이트 성공

        } catch (Exception e) {
            System.out.println(e);
        }
        return 1; // db 오류
    }

}


