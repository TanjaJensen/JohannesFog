package com.Mapper;

import com.Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProductMapper {
    
    Connection conn;
    
    public void createProduct(Product p) throws SQLException{
        
        try{
            String sql = "INSERT INTO product(id, name, measure, price) VALUES(?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, p.getId());
            pst.setString(2, p.getName());
            pst.setDouble(3, p.getMeasure());
            pst.setDouble(4, p.getPrice());
            
        } catch(SQLException ex){
            ex.printStackTrace();
        }
    }
}
