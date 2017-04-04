package com.Mapper;

import com.DB.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.Entity.Employee;

public class EmployeeMapper {
    
    Connection conn = new DBConnector().getConnection();
    
    public Employee getEmployee(Employee em) throws SQLException{
        
        try{    
            
            String sql = "SELECT * FROM employee";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, em.getId());
            pstmt.setString(2, em.getEname());
            pstmt.setInt(3, em.getEphone());
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt(em.getId());
                String ename = rs.getString(em.getEname());
                int ephone = rs.getInt(em.getEphone());
                Employee employee = new Employee(id, ename, ephone);
            
            return employee;
            }
            
        }   
            catch (SQLException ex)
        {
            ex.printStackTrace();
            
        }
        
        return null;
    }
        public static void main(String[] args) {
            
            EmployeeMapper em = new EmployeeMapper();
            System.out.println(em);
    }
            
}
