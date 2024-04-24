
package javamodel;


public class ModelNguoiDung {
    private int userID;
    private String email;
    private String password;
    private String vaiTro ;

    public ModelNguoiDung() {
    }

    public ModelNguoiDung(int userID, String email, String password, String vaiTro) {
        this.userID = userID;
        this.email = email;
        this.password = password;
        this.vaiTro = vaiTro;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(String vaiTro) {
        this.vaiTro = vaiTro;
    }

    @Override
    public String toString() {
        return "ModelNguoiDung{" + "userID=" + userID + ", email=" + email + ", password=" + password + ", vaiTro=" + vaiTro + '}';
    }

    
}
