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

    public void insertUser(String fullName, String phone, String email, String password) throws Exception {

        Connection con = DBconfig.getConnection();

        String sql = "INSERT INTO students (fullName, phone, email, password ) "
                   + "VALUES (?,?,?,?)";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, fullName);
        pst.setString(2, phone);
        pst.setString(3, email);
        pst.setString(4, password);
        
        

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
            u.setUserEmail(rs.getString("email"));
            u.setPassword(rs.getString("password"));
            u.setPhone(rs.getString("phone"));
            
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
            user.setPhone(rs.getString("phone"));
            user.setUserEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
        }
 
        rs.close();
        pst.close();
        con.close();
        return user;
    }
 
    
    // Create a updateUser method which takes fullname, email, password and phone as input and return rowsAffected
    public int updateStudent (int userID, String fullName, String email, String password, String phone) throws Exception {
    	
    
     
     Connection con = DBconfig.getConnection();
     
     String sql = "UPDATE students SET fullName =?, phone =?, email = ?, phone =?, password =?  where student_id=?";
     
     PreparedStatement pst = con.prepareStatement(sql);
     
     pst.setString(1, fullName);
     pst.setString(2, phone);
     pst.setString(3, email);
     pst.setString(4, password);
    
    
     
     
     int rowsAffected = pst.executeUpdate();
     
     pst.close();
    con.close();
    
    return rowsAffected;
    }
}