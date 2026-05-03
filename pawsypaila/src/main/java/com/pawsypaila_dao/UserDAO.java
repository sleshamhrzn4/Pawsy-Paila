package com.pawsypaila_dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


import com.pawsypaila_model.UserModel;
import com.pawsypaila_utilis.DBconfig;



public class UserDAO {

    public void insertUser(String fullName, String password, String phone, String email) throws Exception {

        Connection con = DBconfig.getConnection();

        String sql = "INSERT INTO user (fullName, password, phone, email ) "
                   + "VALUES (?,?,?,?)";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, fullName);
        pst.setString(2, password);
        pst.setString(3, phone);
        pst.setString(4, email);
        
        

        pst.executeUpdate();
        pst.close();
        con.close();
    }
    public List<UserModel> getAllUsers() throws Exception {
        List<UserModel> users = new ArrayList<>();
        Connection con = DBconfig.getConnection();
        
        String sql = "SELECT * FROM users";
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            UserModel u = new UserModel();
            // Mapping student_id
            u.setUserName(rs.getString("fullName"));
            u.setemail(rs.getString("password"));
            u.setPassword(rs.getString("phone"));
            u.setPhone(rs.getString("email"));
            
            users.add(u);
        }
        
        rs.close();
        pst.close();
        con.close();
        return users;
    }

    public UserModel getUserByEmail(String email) throws Exception {
        UserModel user = null;
        Connection con = DBconfig.getConnection();
 
        String sql = "SELECT * FROM users WHERE email = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, email);
 
        ResultSet rs = pst.executeQuery();
 
        if (rs.next()) {
            user = new UserModel();
            user.setUserId(rs.getInt("userId"));
            user.setUserName(rs.getString("fullName"));
            user.setPassword(rs.getString("password"));
            user.setPhone(rs.getString("phone"));
            user.setemail(rs.getString("email"));
        }
 
        rs.close();
        pst.close();
        con.close();
        return user;
    }
 
    
    // Create a updateUser method which takes fullname, email, password and phone as input and return rowsAffected
    public int updateStudent (int userID, String fullName, String password, String phone, String email) throws Exception {
    	
    
     
     Connection con = DBconfig.getConnection();
     
     String sql = "UPDATE students SET fullName =?, password =?, phone =?, email = ? where student_id=?";
     
     PreparedStatement pst = con.prepareStatement(sql);
     
     pst.setString(1, fullName);
     pst.setString(2, password);
     pst.setString(3, phone);
     pst.setString(4, email);
    
    
     
     
     int rowsAffected = pst.executeUpdate();
     
     pst.close();
    con.close();
    
    return rowsAffected;
    }
}