<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Mapper.CustomerMapper, com.Entity.Customer" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Customer Information</title>
        <jsp:include page="includes/Header.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="includes/menu.jsp"></jsp:include>

            <div class="container">

                <form action="CustomerInformation" method="POST">
                    <div class="input-group">
                        <input type="text" class="form-control" name="id" placeholder="Search">
                    <% CustomerMapper cm = new CustomerMapper(); %>
                    <div class="input-group-btn">                        
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>

            <table class="table table-condensed">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Adress</th>
                        <th>Phone</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <%
                    ArrayList<Customer> All = cm.getAllCustomer();
                    for (Customer custom : All) {
                        out.print("<tbody>");
                        out.print("<tr>");
                        out.print("<td>" + custom.getId() + "</td>");
                        out.print("<td>" + custom.getFname() + "</td>");
                        out.print("<td>" + custom.getLname() + "</td>");
                        out.print("<td>" + custom.getAdress() + "</td>");
                        out.print("<td>" + custom.getCphone() + "</td>");
                        out.print("<td>" + custom.getMail() + "</td>");
                        out.print("</tr");
                        out.print("</tbody>");
                    }


                %>




            </table>
        </div>

    </body>
</html>
