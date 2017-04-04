package com.Mapper;

import com.DB.DBConnector;
import com.Entity.Orders;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrdersMapper {

    Connection conn = new DBConnector().getConnection();

    public Orders getOrders(int ono) throws SQLException {

        Orders o = null;
         
        try {
            
            String sql = "SELECT * FROM `Orders` WHERE ono = ?";         
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, ono);
            ResultSet rs = pstmt.executeQuery();

            //System.out.println(pstmt);
         
            if (rs.next()){
                
                o = new Orders();
                
                o.setOno(rs.getInt("ono"));
                o.setEid(rs.getInt("FK_employeeid"));
                o.setCid(rs.getInt("FK_customerid"));               
                o.setWname(rs.getString("FK_wname"));
                o.setSname(rs.getString("FK_sname"));
                o.setRname(rs.getString("FK_rname"));
                
                return o;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return o;

    }
    
    public static void main(String[] args) throws SQLException {

        Orders o = new OrdersMapper().getOrders(12);
        System.out.println(o);
    }

    public Orders getOrders(Orders o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
