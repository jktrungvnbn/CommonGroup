/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test;

import java.sql.Connection;
import database.DBConnect;

public class TESTDB {
    public static void main(String[] args) {
        Connection connect = DBConnect.getConnect();
        System.out.println(connect);
    }
}
