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

public class DBFacade implements IDBFacade {

    CarportMapper cpm = new CarportMapper();

    CustomerMapper cm = new CustomerMapper();
    DetailMapper dm = new DetailMapper();
    EmployeeMapper em = new EmployeeMapper();
    OrderlineMapper olm = new OrderlineMapper();
    OrdersMapper om = new OrdersMapper();
    ProductMapper pm = new ProductMapper();

    @Override
    public Carport getCarport(int id) throws SQLException {
        return cpm.getCarport(id);
    }

    @Override
    public List<Carport> getAllCarport() throws SQLException {
        return cpm.getAllCarport();
    }

    @Override
    public boolean createCustomer(Customer c) throws SQLException {
        return cm.createCustomer(c);
    }

    @Override
    public Customer getCustomer(int id) throws SQLException {
        return cm.getCustomer(id);
    }

    @Override
    public ArrayList<Customer> getAllCustomer() throws SQLException {
        return cm.getAllCustomer();
    }

    @Override
    public boolean createDetail(Detail d) throws SQLException {
        return dm.createDetail(d);
    }

    @Override
    public Detail getDetail(int id) throws SQLException {
        return dm.getDetail(id);
    }

    @Override
    public boolean createEmployee(Employee e) throws SQLException {
        return em.createEmployee(e);
    }

    @Override
    public Employee getEmployee(int id) throws SQLException {
        return em.getEmployee(id);
    }

    @Override
    public Employee getEmployee(String ename, String password) throws SQLException {
        return em.geEmployee(ename, password);
    }

//    @Override
//    public void InsertEmp(String ename, int ephone, String password) throws SQLException {
//        em.InsertEmp(ename, ephone, password);
//        
//    }

    @Override
    public void createOrderline(Orderline ol) throws SQLException {
        olm.createOrderline(ol);
    }

    @Override
    public void createOrders(Orders od) throws SQLException {
        om.createOrders(od);
    }

    @Override
    public void createProduct(Product p) throws SQLException {
        pm.createProduct(p);
    }

    @Override
    public ArrayList<Product> getAllProduct() throws SQLException {
        return pm.getAllProduct();
    }

    @Override
    public void InsertEmp(String ename, int ephone, String password) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
