package com.Servlet;

import com.Entity.Orders;
import com.Mapper.OrdersMapper;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "OrdersServlet", urlPatterns = {"/OrdersServlet"})
public class OrdersServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        int ono = (int) request.getSession().getAttribute("ord");
        int eid = (int) request.getSession().getAttribute("eid");
        int cid = (int) request.getSession().getAttribute("cid");
        String wname = (String) request.getSession().getAttribute("wname");
        String sname = (String) request.getSession().getAttribute("sname,");
        String rname = (String) request.getSession().getAttribute("rname");
        
        OrdersMapper ord = new OrdersMapper();
        Orders o = new Orders(ono, eid, cid, wname,sname, rname);
        Orders od1 = ord.getOrders(o);
        
        request.getSession().setAttribute("ono", od1.getOno());
        request.getSession().setAttribute("eid", od1.getEid());
        request.getSession().setAttribute("cid", od1.getCid());
        request.getSession().setAttribute("wname", od1.getWname());
        request.getSession().setAttribute("sname", od1.getSname());
        request.getSession().setAttribute("rname", od1.getRname());
        
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
            Logger.getLogger(OrdersServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(OrdersServlet.class.getName()).log(Level.SEVERE, null, ex);
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
