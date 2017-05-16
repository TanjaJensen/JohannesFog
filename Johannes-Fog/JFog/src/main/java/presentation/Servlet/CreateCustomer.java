package presentation.Servlet;

import service.Entity.Customer;
import data.Mapper.CustomerMapper;
import data.Mapper.DBFacade;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CreateCustomer", urlPatterns = {"/CreateCustomer"})
public class CreateCustomer extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {       

        // CustomerMapper cm = new CustomerMapper();
        DBFacade cm = new DBFacade();
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String adress = request.getParameter("adress");
        int cphone = Integer.parseInt(request.getParameter("cphone"));
        String mail = request.getParameter("mail");
        
        Customer c = new Customer(fname, lname, adress, cphone, mail);
        
        if(cm.createCustomer(c)){
            
            request.getSession().setAttribute("fname", fname);
            request.getSession().setAttribute("lname", lname);
            request.getSession().setAttribute("adress", adress);
            request.getSession().setAttribute("cphone", cphone);
            request.getSession().setAttribute("mail", mail);
            
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CreateCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CreateCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
