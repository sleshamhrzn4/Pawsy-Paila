package com.pawsypaila_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pawsypaila_utilis.DBconfig;

public class RegisterDAO {

    public void insertUser(String fullName, String phone, String email, String password) throws Exception {

        Connection con = DBconfig.getConnection();

        String sql = "INSERT INTO users (full_name, phone, email, password) VALUES (?, ?, ?, ?)";

        PreparedStatement pst = con.prepareStatement(sql);

        pst.setString(1, fullName);
        pst.setString(2, phone);
        pst.setString(3, email);
        pst.setString(4, password);

        pst.executeUpdate();

        pst.close();
        con.close();
    }
}