package User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LikeListDAO2 {
    private Connection con; // 연결 객체 생성
    private PreparedStatement pstmt; // 실행 객체 생성
    private ResultSet rs; // 결과값 저장 객체 생성
    String SQL = null;
    String result = null;

    // DB 가져오기
    public LikeListDAO2() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lets_go_trip", "root", "wkddbqls0901");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // 첫 번째 저장 항목 노출
    public String firstLike(String userId) {
        SQL = "select first_like from userinfo where userId =" + "\"" + userId + "\"";

        try {
            pstmt = con.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            // 결괏값 저장
            while (rs.next()) {
                result = rs.getString(1);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }

    // 두 번째 저장 항목 노출
    public String secondLike(String userId) {
        SQL = "select second_like from userinfo where userId =" + "\"" + userId + "\"";

        try {
            pstmt = con.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            // 결괏값 저장
            while (rs.next()) {
                result = rs.getString(1);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }

    // 세 번째 저장 항목 노출
    public String thirdLike(String userId) {
        SQL = "select third_like from userinfo where userId =" + "\"" + userId + "\"";

        try {
            pstmt = con.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            // 결괏값 저장
            while (rs.next()) {
                result = rs.getString(1);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }

}
