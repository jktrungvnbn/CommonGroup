/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static Connection c = null;
   
    public static Connection getConnect() {
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String url = "jdbc:mySQL://localhost:3306/quanliquanbi-a";
            String userName = "root";
            String password = "1234567890";  // Nếu mysql chưa có mật khẩu thì để chuỗi rỗng
            
            c = DriverManager.getConnection(url, userName, password);
            System.out.println("Kết nối thành công!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return c;
    }

    
}
