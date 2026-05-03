package com.pawsypaila_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

import com.pawsypaila_model.AdoptionRequestModel;
import com.pawsypaila_utilis.DBconfig;

public class AdoptionRequestDAO {
	 
    
    public void insertAdoptionRequest(int userId, int petId, 
    		String reason, String requestDate) throws Exception {
    	LocalDate localDate = LocalDate.parse(requestDate); 
    	Date sqlDate = Date.valueOf(localDate);
        
    	
    	Connection con = DBconfig.getConnection();
        String sql = "INSERT INTO AdoptionRequest (userId, petId, AdoptionStatus, reason, requestDate) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

        pst.setInt(1, userId);
        pst.setInt(2, petId);
        pst.setString(3, "Pending");   // default status when first submitted
        pst.setString(4, reason);
        pst.setDate(5,sqlDate);

        pst.executeUpdate();
        pst.close();
        con.close();
    }

    // Get all requests (for admin to review)
    public List<AdoptionRequestModel> getAllRequests() throws Exception {
        List<AdoptionRequestModel> requests = new ArrayList<>();
        Connection con = DBconfig.getConnection();

        String sql = "SELECT * FROM AdoptionRequest";
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            AdoptionRequestModel r = new AdoptionRequestModel();
            r.setAdoptionId(rs.getInt("adoptionId"));
            r.setUserId(rs.getInt("userId"));
            r.setPetId(rs.getInt("petId"));
            r.setAdoptionStatus(rs.getString("AdoptionStatus"));
            r.setReason(rs.getString("reason"));
            r.setRequestDate(rs.getDate("requestDate"));
            requests.add(r);
        }

        rs.close();
        pst.close();
        con.close();
        return requests;
    }

    // Admin approves or rejects a request
    public int updateAdoptionStatus(int adoptionId, String status) throws Exception {
        Connection con = DBconfig.getConnection();
        String sql = "UPDATE AdoptionRequest SET AdoptionStatus = ? WHERE adoptionId = ?";
        PreparedStatement pst = con.prepareStatement(sql);

        pst.setString(1, status);   // "Approved" or "Rejected"
        pst.setInt(2, adoptionId);

        int rowsAffected = pst.executeUpdate();
        pst.close();
        con.close();
        return rowsAffected;
    }
}