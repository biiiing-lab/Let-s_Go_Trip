package User;

import java.io.PrintWriter;
import java.sql.*;


public class LikeListDAO {
    private Connection con; // DB 커넥션 객체 생성
    private PreparedStatement pstmt; // 실행 객체 생성
    String addSQL = null; // 저장 질의
    String subSQL = null; // 삭제 질의
    String first = null;
    String second = null;
    String third = null;


    // DB 가지고 오기
    public LikeListDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lets_go_trip", "root", "wkddbqls0901");
        } catch (Exception e) {
            System.out.println(e);
        }
    }


    // 장소 저장 메서드
    public int addSpot(String userId, String like) {
        try {

            // (세션에 저장된 아이디 기준) 첫 번째 저장 장소 가지고 오기
            String query = "select first_like from userinfo where userId = " + "\"" + userId + "\"";
            pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                first = rs.getString(1);
            }

            // (세션에 저장된 아이디 기준) 두 번째 저장 장소 가지고 오기
            String query2 = "select second_like from userinfo where userId = " + "\"" + userId + "\"";
            pstmt = con.prepareStatement(query2);
            ResultSet rs2 = pstmt.executeQuery();

            while (rs2.next()) {
                second = rs2.getString(1);
            }

            // (세션에 저장된 아이디 기준) 세 번째 저장 장소 가지고 오기
            String query3 = "select third_like from userinfo where userId = " + "\"" + userId + "\"";
            pstmt = con.prepareStatement(query3);
            ResultSet rs3 = pstmt.executeQuery();

            while (rs3.next()) {
                third = rs3.getString(1);
            }

            // 첫 번째 저장 장소에 넣기
            if (first == null || first.equals("null")) {
                try {
                    addSQL = "update userinfo set first_like = " + "\"" + like + "\"" + " where userId = " + "\"" + userId + "\"";
                    pstmt = con.prepareStatement(addSQL);
                    pstmt.executeUpdate();
                } catch (Exception e) {
                    e.getMessage();
                    return 0; // 장소 추가 실패
                }

                // 두 번째 저장 장소에 넣기
            } else if (second == null || second.equals("null")) {
                try {
                    addSQL = "update userinfo set second_like = " + "\"" + like + "\"" + " where userId = " + "\"" + userId + "\"";
                    pstmt = con.prepareStatement(addSQL);
                    pstmt.executeUpdate();
                } catch (Exception e) {
                    e.getMessage();
                    return 0; // 장소 추가 실패
                }

                // 세 번째 저장 장소에 넣기
            } else if (third == null || third.equals("null")) {
                try {
                    addSQL = "update userinfo set third_like = " + "\"" + like + "\"" + " where userId = " + "\"" + userId + "\"";
                    pstmt = con.prepareStatement(addSQL);
                    pstmt.executeUpdate();
                } catch (Exception e) {
                    e.getMessage();
                    return 0; // 장소 추가 실패
                }
            } else {
                return 0; // 장소 추가 실패
            }

        } catch (Exception e) {
            e.getMessage();
        }
        return 1; // 장소 추가 성공
    }

    // 장소 삭제 메서드
    public int subSpot(String userId, String like) {

        try {

            // 첫 번째 장소 기존 데이터값 가지고 오기
            String query = "select first_like from userinfo where userId = " + "\"" + userId + "\"";
            pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                first = rs.getString(1);
            }

            // 두 번째 장소 기존 데이터값 가지고 오기
            String query2 = "select second_like from userinfo where userId = " + "\"" + userId + "\"";
            pstmt = con.prepareStatement(query2);
            ResultSet rs2 = pstmt.executeQuery();

            while (rs2.next()) {
                second = rs2.getString(1);
            }

            // 세 번째 장소 기존 데이터값 가지고 오기
            String query3 = "select third_like from userinfo where userId = " + "\"" + userId + "\"";
            pstmt = con.prepareStatement(query3);
            ResultSet rs3 = pstmt.executeQuery();

            while (rs3.next()) {
                third = rs3.getString(1);
            }


            // 메서드 매개변수와 같은 위치에 있는 장소 제거 조건문
            if (like.equals(first)) { // 매개변수 값이 첫 번째 위치와 같은 경우
                subSQL = "update userinfo set first_like = null " + " where userId = " + "\"" + userId + "\"";
                pstmt = con.prepareStatement(subSQL);
                pstmt.executeUpdate();
                return 0; // 장소 삭제 성공
            } else if (like.equals(second)) { // 매개변수 값이 두 번째 위치와 같은 경우
                subSQL = "update userinfo set second_like = null " + " where userId = " + "\"" + userId + "\"";
                pstmt = con.prepareStatement(subSQL);
                pstmt.executeUpdate();
                return 0; // 장소 삭제 성공

            } else if (like.equals(third)) { // 매개변수 값이 세 번째 위치와 같은 경우
                subSQL = "update userinfo set third_like = null" + " where userId = " + "\"" + userId + "\"";
                pstmt = con.prepareStatement(subSQL);
                pstmt.executeUpdate();
                return 0; // 장소 삭제 성공
            }

        } catch (Exception e) {
            e.getMessage();
            return 1; // 장소 삭제 실패
        }

        return -1; // 변경사항 x
    }
}

