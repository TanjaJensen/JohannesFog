<%-- 
    Document   : view
    Created on : 27-02-2017, 19:47:48
    Author     : auron
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.Mapper.OrdersMapper"%>
<%@page import="com.Entity.Orders"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view of OrderMaps </title>


    </head>
    <body>
        <% Orders listOrder = new OrdersMapper().getOrders(12); %>


        <%
            
                out.print("<div>");
                out.print("<h2>" + listOrder.getOno() + "</h2>");
                out.print("<h2>" + listOrder.getEid() + "</h2>");
                out.print("<h2>" + listOrder.getCid() + "</h2>");
                out.print("<h2>" + listOrder.getWname() + "</h2>");
                out.print("<h2>" + listOrder.getSname() + "</h2>");
                out.print("<h2>" + listOrder.getRname() + "</h2>");
                out.print("</div>");
            
        %>

    </body>
</html>

   

