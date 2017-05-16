package data.Mapper;

import service.Entity.Carport;
import service.Entity.Customer;
import service.Entity.Detail;
import service.Entity.Employee;
import service.Entity.Orderline;
import service.Entity.Orders;
import service.Entity.Product;
import com.exception.EmployeeException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface IDBFacade {
    
     // CarportMapper
     public Carport getCarport(int id) throws SQLException;
     public List<Carport> getAllCarport() throws SQLException;
     
     // CustomerMapper
     public boolean createCustomer(Customer c) throws SQLException;
     public Customer getCustomer(int id) throws SQLException;
     public ArrayList<Customer> getAllCustomer() throws SQLException;
     
     // DetailMapper
     public boolean createDetail(Detail d) throws SQLException;
     public Detail getDetail(int id) throws SQLException;
     
     // EmployeeMapper
     public boolean createEmployee(Employee e) throws SQLException;
     public Employee getEmployee(int id) throws SQLException;
     public Employee getEmployee(String ename, String password) throws SQLException;
     public void InsertEmp(String ename, int ephone, String password) throws SQLException;
     
     // OrderlineMapper
     public void createOrderline(Orderline ol) throws SQLException;
     
     // OrdersMapper
     public void createOrders(Orders od) throws SQLException;
     
     // ProductMapper
     public void createProduct(Product p) throws SQLException;
     public ArrayList<Product> getAllProduct() throws SQLException;
     
     // exception
     
}
