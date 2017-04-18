package com.Mapper;

import com.DB.DBConnector;
import com.Entity.Orderline;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderlineMapper {

    Connection conn;
    
    public OrderlineMapper(){
        this.conn = new DBConnector().getConnection();
    }
    
    public void createOrderline(Orderline ol) throws SQLException{
        
        try{
            String sql = "INSERT INTO orderline(product_id, wood_qty, screw_qty, roof_qty, roof_pitch, bracket) VALUES(?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, ol.getProduct_id());
            pst.setInt(2, ol.getWood_qty());
            pst.setInt(3, ol.getScrew_qty());
            pst.setInt(3, ol.getRoof_qty());
            pst.setString(4, ol.getRoof_pitch());
            pst.setInt(6, ol.getBracket());
            
        } catch (SQLException ex){
            ex.printStackTrace();
        }
    }
    
}
