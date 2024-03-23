package User;

public class User {

    // 생성자 항목
    private String userID;
    private String userPassword;
    private String userEmail;
    private String first_like = null;
    private String second_like = null;
    private String third_like = null;

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getFirst_like() {
        return first_like;
    }

    public void setFirst_like(String first_like) {
        this.first_like = first_like;
    }

    public String getSecond_like() {
        return second_like;
    }

    public void setSecond_like(String second_like) {
        this.first_like = second_like;
    }


    public String getThird_like() {
        return third_like;
    }

    public void setThird_like(String third_like) {

        this.third_like = third_like;
    }

}
